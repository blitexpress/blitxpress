<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;
use Stripe\Customer;

class Order extends Model
{
    use HasFactory;
    //boot
    public static function boot()
    {
        parent::boot();
        //created
        self::created(function ($m) {
            try {
                // Send emails after response using dispatch
                dispatch(function () use ($m) {
                    self::send_mails($m);
                })->afterResponse();
            } catch (\Throwable $th) {
                Log::error('Order created email error: ' . $th->getMessage());
            }
        });

        //updated
        self::updated(function ($m) {
            try {
                // Send emails after response using dispatch
                dispatch(function () use ($m) {
                    self::send_mails($m);
                })->afterResponse();
            } catch (\Throwable $th) {
                Log::error('Order updated email error: ' . $th->getMessage());
            }
        });


        self::deleting(function ($m) {
            try {
                $items = OrderedItem::where('order', $m->id)->get();
                foreach ($items as $item) {
                    $item->delete();
                }
            } catch (\Throwable $th) {
                //throw $th;
            }
        });
    }


      public static function send_mails($m)
    {
        try {
            // Wrap the entire method in a try-catch to prevent any uncaught errors
            $customer = User::find($m->user);
            if ($customer == null) {
                Log::info('Order email not sent: Customer not found for order ' . $m->id);
                return;
            }

            $mail_body_admin = "";
            $mail_body_customer = "";
            
            try {
                $review_url = admin_url('orders/' . $m->id . '/edit');
            } catch (\Throwable $th) {
                $review_url = "N/A";
                Log::warning('Failed to generate admin URL for order ' . $m->id . ': ' . $th->getMessage());
            }
            
            $order_items = [];
            try {
                $order_items = $m->get_items();
            } catch (\Throwable $th) {
                Log::error('Failed to get order items for order ' . $m->id . ': ' . $th->getMessage());
                $order_items = [];
            }

            // Build items list for email
            $items_list = "";
            $total_items = 0;
            foreach ($order_items as $item) {
                try {
                    $items_list .= "• {$item->product_name} - Qty: {$item->product_quantity} - UGX " . number_format($item->product_price_1, 0) . "<br>";
                    $total_items += $item->product_quantity;
                } catch (\Throwable $th) {
                    Log::warning('Error processing order item for order ' . $m->id . ': ' . $th->getMessage());
                }
            }

        if ($m->order_state == 0) {
            // Admin email content
            $mail_body_admin = <<<EOD
        <h2 style="color: #d71529;">🛍️ New Order Received - BlitXpress</h2>
        
        <p>Dear Administrator,</p>
        
        <p>A new order has been successfully placed on BlitXpress. Please review the details below:</p>
        
        <div style="background-color: #f8f9fa; padding: 15px; border-left: 4px solid #d71529; margin: 20px 0;">
            <h3 style="margin-top: 0; color: #333;">📋 Order Details</h3>
            <p><strong>Order ID:</strong> #{$m->id}</p>
            <p><strong>Order Status:</strong> <span style="color: #ffc107;">⏳ Pending</span></p>
            <p><strong>Customer:</strong> {$customer->first_name} {$customer->last_name}</p>
            <p><strong>Customer Email:</strong> {$customer->email}</p>
            <p><strong>Customer Phone:</strong> {$customer->phone_number}</p>
            <p><strong>Order Date:</strong> {$m->created_at->format('M d, Y h:i A')}</p>
            <p><strong>Total Items:</strong> {$total_items}</p>
            <p><strong>Total Amount:</strong> <span style="color: #28a745; font-size: 18px; font-weight: bold;">UGX " . number_format($m->total, 0) . "</span></p>
        </div>
        
        <div style="background-color: #fff; padding: 15px; border: 1px solid #dee2e6; margin: 20px 0;">
            <h3 style="color: #333;">📦 Ordered Items</h3>
            {$items_list}
        </div>
        
        <div style="text-align: center; margin: 30px 0;">
            <a href="{$review_url}" style="background-color: #d71529; color: white; padding: 12px 25px; text-decoration: none; border-radius: 5px; font-weight: bold;">
                🔍 Review Order in Admin Panel
            </a>
        </div>
        
        <hr style="border: none; border-top: 1px solid #eee; margin: 30px 0;">
        
        <p style="color: #666; font-size: 12px;">
            <strong>Next Steps:</strong><br>
            1. Review the order details in the admin panel<br>
            2. Verify product availability<br>
            3. Process the order and update the status<br>
            4. Contact the customer if needed
        </p>
        
        <p style="color: #999; font-size: 11px; margin-top: 30px;">
            This is an automated notification from BlitXpress. Please do not reply to this email.
        </p>
        EOD;

            // Customer email content
            $mail_body_customer = <<<EOD
        <h2 style="color: #d71529;">🎉 Order Confirmation - BlitXpress</h2>
        
        <p>Dear {$customer->first_name} {$customer->last_name},</p>
        
        <p>Thank you for choosing BlitXpress! We're excited to confirm that we've received your order.</p>
        
        <div style="background-color: #f8f9fa; padding: 15px; border-left: 4px solid #28a745; margin: 20px 0;">
            <h3 style="margin-top: 0; color: #333;">📋 Your Order Summary</h3>
            <p><strong>Order ID:</strong> #{$m->id}</p>
            <p><strong>Order Status:</strong> <span style="color: #ffc107;">⏳ Processing</span></p>
            <p><strong>Order Date:</strong> {$m->created_at->format('M d, Y h:i A')}</p>
            <p><strong>Total Items:</strong> {$total_items}</p>
            <p><strong>Total Amount:</strong> <span style="color: #28a745; font-size: 18px; font-weight: bold;">UGX " . number_format($m->total, 0) . "</span></p>
        </div>
        
        <div style="background-color: #fff; padding: 15px; border: 1px solid #dee2e6; margin: 20px 0;">
            <h3 style="color: #333;">📦 Items Ordered</h3>
            {$items_list}
        </div>
        
        <div style="background-color: #e7f3ff; padding: 15px; border-left: 4px solid #0066cc; margin: 20px 0;">
            <h3 style="margin-top: 0; color: #0066cc;">📞 What Happens Next?</h3>
            <p>• Our team will review and process your order within 24 hours</p>
            <p>• We'll contact you via phone or email to confirm delivery details</p>
            <p>• You'll receive tracking information once your order ships</p>
            <p>• Expected processing time: 1-2 business days</p>
        </div>
        
        <div style="background-color: #fff3cd; padding: 15px; border-left: 4px solid #ffc107; margin: 20px 0;">
            <h3 style="margin-top: 0; color: #856404;">📧 Contact Information</h3>
            <p>If you have any questions about your order, please contact us:</p>
            <p>📞 <strong>Phone:</strong> +256800200146</p>
            <p>📧 <strong>Email:</strong> blitexpress@gmail.com</p>
            <p>🌐 <strong>Website:</strong> www.blitxpress.com</p>
        </div>
        
        <hr style="border: none; border-top: 1px solid #eee; margin: 30px 0;">
        
        <p style="color: #666; text-align: center;">
            Thank you for shopping with BlitXpress! We appreciate your business.
        </p>
        
        <p style="color: #999; font-size: 11px; margin-top: 30px; text-align: center;">
            This is an automated confirmation email. Please save this email for your records.<br>
            If you need immediate assistance, please contact our customer service team.
        </p>
        EOD;
        }

        // Send email to administrators with timeout protection
        $admin_emails = [
            'mubahood360@gmail.com',
            // 'blitexpress@gmail.com',
            'blitxpressonline@gmail.com',
        ];

        foreach ($admin_emails as $admin_email) {
            try {
                $admin_data = [
                    'body' => $mail_body_admin,
                    'data' => $mail_body_admin,
                    'name' => 'BlitXpress Admin',
                    'email' => $admin_email,
                    'subject' => "🛍️ New Order #{$m->id} - BlitXpress",
                    'view' => 'mail-1'
                ];
                
                // Set a timeout for email sending to prevent blocking
                set_time_limit(30);
                Utils::mail_sender($admin_data);
            } catch (\Throwable $th) {
                // Log error but don't break the process
                Log::error('Failed to send admin email for order ' . $m->id . ' to ' . $admin_email . ': ' . $th->getMessage());
            }
        }

        // Send email to customer (only if email is valid) with timeout protection
        if ($customer->email && filter_var($customer->email, FILTER_VALIDATE_EMAIL)) {
            try {
                $customer_data = [
                    'body' => $mail_body_customer,
                    'data' => $mail_body_customer,
                    'name' => $customer->first_name . ' ' . $customer->last_name,
                    'email' => $customer->email,
                    'subject' => "🎉 Order Confirmation #{$m->id} - BlitXpress",
                    'view' => 'mail-1'
                ];
                
                // Set a timeout for email sending to prevent blocking
                set_time_limit(30);
                Utils::mail_sender($customer_data);
            } catch (\Throwable $th) {
                // Log error but don't break the process
                Log::error('Failed to send customer email for order ' . $m->id . ' to ' . $customer->email . ': ' . $th->getMessage());
            }
        }
        
        } catch (\Throwable $th) {
            // Catch any unexpected errors in the entire email process
            Log::error('Critical error in send_mails for order ' . $m->id . ': ' . $th->getMessage());
            Log::error('Stack trace: ' . $th->getTraceAsString());
        }
    } 


    public function create_payment_link()
    {
        return;
        $stripe = env('STRIPE_KEY');
        if (($this->stripe_id != null) && (strlen($this->stripe_id) > 0)) {
            return;
        }


        $itmes = $this->get_items();
        $line_items = [];
        foreach ($itmes as $key => $item) {
            $pro = Product::find($item->product);
            if ($pro == null) {
                continue;
            }
            if ($pro->stripe_price == null || strlen($pro->stripe_price) < 3) {
                continue;
            }
            $line_items[] = [
                'price' => $pro->stripe_price,
                'quantity' => $item->qty,
            ];
        }
        if (count($line_items) < 1) {
            $this->delete();
            throw new \Exception("No items to create payment link");
            return;
        }
        $isSuccess = false;
        $resp = "";
        $stripe = new \Stripe\StripeClient(
            env('STRIPE_KEY')
        );
        try {
            $resp = $stripe->paymentLinks->create([
                'currency' => 'cad',
                'line_items' => $line_items,
            ]);
            $isSuccess = true;
        } catch (\Throwable $th) {
            $isSuccess = false;
            $resp = $th->getMessage();
        }

        if ($isSuccess) {
            $this->stripe_id = $resp->id;
            $this->stripe_url = $resp->url;
            $this->stripe_paid = 'No';
            $this->save();
        }
    }
    public function get_items()
    {
        $items = [];
        foreach (
            OrderedItem::where([
                'order' => $this->id
            ])->get() as $_item
        ) {
            $pro = Product::find($_item->product);
            if ($pro == null) {
                continue;
            }
            if ($_item->pro == null) {
                continue;
            }
            $_item->product_name = $_item->pro->name;
            $_item->product_feature_photo = $_item->pro->feature_photo;
            $_item->product_price_1 = $_item->pro->price_1;
            $_item->product_quantity = $_item->qty;
            $_item->product_id = $_item->pro->id;
            $items[] = $_item;
        }
        return $items;
    }

    //belongs to customer
    public function customer()
    {
        return $this->belongsTo(User::class, 'user');
    }

    //get payment link
    public function payment_link()
    {
        if ($this->stripe_url != null && strlen($this->stripe_url) > 5) {
            return $this->stripe_url;
        }

        $stripe = env('STRIPE_KEY');
        $stripe = new \Stripe\StripeClient(
            env('STRIPE_KEY')
        );

        $name = 'Order payment for ' . date('Y-m-d H:i:s') . " " . rand(1, 100000);

        $resp = null;
        try {
            $resp = $stripe->products->create([
                'name' => $name,
                'default_price_data' => [
                    'currency' => 'cad',
                    'unit_amount' => 1 * 100,
                ],
            ]);
        } catch (\Throwable $th) {
            throw $th;
        }
        if ($resp == null) {
            throw new \Exception("Error Processing Request", 1);
        }
        if ($resp->default_price == null) {
            throw new \Exception("Error Processing Request", 1);
        }
        $linkResp = null;
        try {
            $linkResp = $stripe->paymentLinks->create([
                'currency' => 'cad',
                'line_items' => [
                    [
                        'price' => $resp->default_price,
                        'quantity' => 1,
                    ]
                ]
            ]);
        } catch (\Throwable $th) {
            throw $th;
        }
        if ($linkResp == null) {
            throw new \Exception("Error Processing Request", 1);
        }
    }
}
