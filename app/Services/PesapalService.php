<?php

namespace App\Services;

use App\Config\PesapalConfig;
use App\Enums\PesapalPaymentStatus;
use App\Exceptions\PesapalException;
use App\Models\Order;
use App\Models\PesapalTransaction;
use App\Models\PesapalIpnLog;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Cache;
use Carbon\Carbon;

class PesapalService
{
    private $consumerKey;
    private $consumerSecret;
    private $baseUrl;
    private $environment;
    private $token;
    private $tokenExpiresAt;

    public function __construct()
    {
        $this->consumerKey = PesapalConfig::getConsumerKey();
        $this->consumerSecret = PesapalConfig::getConsumerSecret();
        $this->environment = PesapalConfig::getEnvironment();
        $this->baseUrl = PesapalConfig::getBaseUrl();
        
        // Validate configuration
        if (empty($this->consumerKey) || empty($this->consumerSecret)) {
            throw PesapalException::configurationError('Consumer key and secret are required');
        }
    }

    /**
     * Get or refresh authentication token
     */
    public function getAuthToken()
    {
        // Check if we have a valid token
        if ($this->token && $this->tokenExpiresAt && Carbon::now()->isBefore($this->tokenExpiresAt)) {
            return $this->token;
        }

        try {
            $response = Http::withHeaders([
                'Accept' => 'application/json',
                'Content-Type' => 'application/json',
            ])->post($this->baseUrl . '/Auth/RequestToken', [
                'consumer_key' => $this->consumerKey,
                'consumer_secret' => $this->consumerSecret,
            ]);

            if ($response->successful()) {
                $data = $response->json();
                
                if (isset($data['token'])) {
                    $this->token = $data['token'];
                    // Token expires in 5 minutes, set expiry 30 seconds before
                    $this->tokenExpiresAt = Carbon::now()->addMinutes(4.5);
                    
                    Log::info('Pesapal: Authentication token obtained successfully');
                    return $this->token;
                }
            }

            Log::error('Pesapal: Authentication failed', [
                'status' => $response->status(),
                'response' => $response->json()
            ]);
            
            throw new \Exception('Failed to authenticate with Pesapal: ' . $response->body());

        } catch (\Exception $e) {
            Log::error('Pesapal: Authentication exception', ['error' => $e->getMessage()]);
            throw $e;
        }
    }

    /**
     * Register IPN URL with Pesapal
     */
    public function registerIpnUrl($ipnUrl = null, $notificationType = 'POST')
    {
        if (!$ipnUrl) {
            $ipnUrl = env('PESAPAL_IPN_URL');
        }

        try {
            $token = $this->getAuthToken();

            $response = Http::withHeaders([
                'Accept' => 'application/json',
                'Content-Type' => 'application/json',
                'Authorization' => 'Bearer ' . $token,
            ])->post($this->baseUrl . '/URLSetup/RegisterIPN', [
                'url' => $ipnUrl,
                'ipn_notification_type' => $notificationType,
            ]);

            if ($response->successful()) {
                $data = $response->json();
                Log::info('Pesapal: IPN URL registered successfully', $data);
                return $data;
            }

            Log::error('Pesapal: IPN registration failed', [
                'status' => $response->status(),
                'response' => $response->json()
            ]);

            throw new \Exception('Failed to register IPN URL: ' . $response->body());

        } catch (\Exception $e) {
            Log::error('Pesapal: IPN registration exception', ['error' => $e->getMessage()]);
            throw $e;
        }
    }

    /**
     * Submit order request to Pesapal
     */
    public function submitOrderRequest(Order $order, $notificationId, $callbackUrl = null)
    {
        if (!$callbackUrl) {
            $callbackUrl = env('PESAPAL_CALLBACK_URL');
        }

        // Generate unique merchant reference
        $merchantReference = 'ORDER_' . $order->id . '_' . time();

        try {
            $token = $this->getAuthToken();

            $payload = [
                'id' => $merchantReference,
                'currency' => 'UGX', // Default to UGX, can be made configurable
                'amount' => (float) $order->order_total,
                'description' => 'Order #' . $order->id . ' payment',
                'callback_url' => $callbackUrl,
                'notification_id' => $notificationId,
                'billing_address' => [
                    'email_address' => $order->mail ?: ($order->customer->email ?? ''),
                    'phone_number' => $order->customer_phone_number_1 ?: ($order->customer->phone_number ?? ''),
                    'country_code' => 'UG', // Default to Uganda
                    'first_name' => $order->customer_name ?: ($order->customer->first_name ?? ''),
                    'last_name' => $order->customer->last_name ?? '',
                    'line_1' => $order->customer_address ?: '',
                    'line_2' => '',
                    'city' => '',
                    'state' => '',
                    'postal_code' => '',
                    'zip_code' => ''
                ]
            ];

            $response = Http::withHeaders([
                'Accept' => 'application/json',
                'Content-Type' => 'application/json',
                'Authorization' => 'Bearer ' . $token,
            ])->post($this->baseUrl . '/Transactions/SubmitOrderRequest', $payload);

            if ($response->successful()) {
                $data = $response->json();
                
                // Create transaction record
                $transaction = PesapalTransaction::create([
                    'order_id' => $order->id,
                    'order_tracking_id' => $data['order_tracking_id'],
                    'merchant_reference' => $merchantReference,
                    'amount' => $order->order_total,
                    'currency' => 'UGX',
                    'status' => 'PENDING',
                    'redirect_url' => $data['redirect_url'],
                    'callback_url' => $callbackUrl,
                    'notification_id' => $notificationId,
                    'description' => 'Order #' . $order->id . ' payment',
                    'pesapal_response' => json_encode($data)
                ]);

                // Update order with Pesapal info
                $order->update([
                    'payment_gateway' => 'pesapal',
                    'pesapal_order_tracking_id' => $data['order_tracking_id'],
                    'pesapal_merchant_reference' => $merchantReference,
                    'pesapal_status' => 'PENDING',
                    'pesapal_redirect_url' => $data['redirect_url'],
                    'payment_status' => 'PENDING_PAYMENT'
                ]);

                Log::info('Pesapal: Order submitted successfully', [
                    'order_id' => $order->id,
                    'tracking_id' => $data['order_tracking_id']
                ]);

                return $data;
            }

            Log::error('Pesapal: Order submission failed', [
                'order_id' => $order->id,
                'status' => $response->status(),
                'response' => $response->json()
            ]);

            throw new \Exception('Failed to submit order to Pesapal: ' . $response->body());

        } catch (\Exception $e) {
            Log::error('Pesapal: Order submission exception', [
                'order_id' => $order->id,
                'error' => $e->getMessage()
            ]);
            throw $e;
        }
    }

    /**
     * Get transaction status from Pesapal
     */
    public function getTransactionStatus($orderTrackingId)
    {
        try {
            $token = $this->getAuthToken();

            $response = Http::withHeaders([
                'Accept' => 'application/json',
                'Content-Type' => 'application/json',
                'Authorization' => 'Bearer ' . $token,
            ])->get($this->baseUrl . '/Transactions/GetTransactionStatus', [
                'orderTrackingId' => $orderTrackingId
            ]);

            if ($response->successful()) {
                $data = $response->json();
                
                Log::info('Pesapal: Transaction status retrieved', [
                    'tracking_id' => $orderTrackingId,
                    'status' => $data['payment_status_description'] ?? 'Unknown'
                ]);

                return $data;
            }

            Log::error('Pesapal: Failed to get transaction status', [
                'tracking_id' => $orderTrackingId,
                'status' => $response->status(),
                'response' => $response->json()
            ]);

            throw new \Exception('Failed to get transaction status: ' . $response->body());

        } catch (\Exception $e) {
            Log::error('Pesapal: Transaction status exception', [
                'tracking_id' => $orderTrackingId,
                'error' => $e->getMessage()
            ]);
            throw $e;
        }
    }

    /**
     * Update transaction status based on Pesapal response
     */
    public function updateTransactionStatus($orderTrackingId, $statusData)
    {
        try {
            $transaction = PesapalTransaction::where('order_tracking_id', $orderTrackingId)->first();
            
            if (!$transaction) {
                Log::warning('Pesapal: Transaction not found for tracking ID: ' . $orderTrackingId);
                return false;
            }

            // Update transaction
            $transaction->update([
                'status' => $statusData['payment_status_description'] ?? 'UNKNOWN',
                'status_code' => $statusData['status_code'] ?? null,
                'payment_method' => $statusData['payment_method'] ?? null,
                'confirmation_code' => $statusData['confirmation_code'] ?? null,
                'payment_account' => $statusData['payment_account'] ?? null,
                'pesapal_response' => json_encode($statusData)
            ]);

            // Update order status
            $order = $transaction->order;
            if ($order) {
                $paymentStatus = $this->mapPesapalStatusToPaymentStatus($statusData['payment_status_description'] ?? '');
                $orderState = $this->mapPaymentStatusToOrderState($paymentStatus);

                $order->update([
                    'pesapal_status' => $statusData['payment_status_description'] ?? 'UNKNOWN',
                    'pesapal_payment_method' => $statusData['payment_method'] ?? null,
                    'payment_status' => $paymentStatus,
                    'order_state' => $orderState,
                    'payment_completed_at' => $paymentStatus === 'PAID' ? now() : null
                ]);

                Log::info('Pesapal: Order status updated', [
                    'order_id' => $order->id,
                    'payment_status' => $paymentStatus,
                    'order_state' => $orderState
                ]);
            }

            return true;

        } catch (\Exception $e) {
            Log::error('Pesapal: Failed to update transaction status', [
                'tracking_id' => $orderTrackingId,
                'error' => $e->getMessage()
            ]);
            throw $e;
        }
    }

    /**
     * Map Pesapal status to our payment status
     */
    private function mapPesapalStatusToPaymentStatus($pesapalStatus)
    {
        switch (strtoupper($pesapalStatus)) {
            case 'COMPLETED':
                return 'PAID';
            case 'FAILED':
            case 'INVALID':
                return 'FAILED';
            case 'REVERSED':
                return 'REFUNDED';
            default:
                return 'PENDING_PAYMENT';
        }
    }

    /**
     * Map payment status to order state
     */
    private function mapPaymentStatusToOrderState($paymentStatus)
    {
        switch ($paymentStatus) {
            case 'PAID':
                return '1'; // Processing
            case 'FAILED':
                return '4'; // Failed
            default:
                return '0'; // Pending
        }
    }
}
