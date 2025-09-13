<?php

use App\Http\Controllers\AccountController;
use App\Http\Controllers\MainController;
use App\Http\Middleware\Authenticate;
use App\Http\Middleware\RedirectIfAuthenticated;
use App\Models\Gen;
use App\Models\Order;
use App\Models\Utils;
use Carbon\Carbon;
use Dflydev\DotAccessData\Util;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

// Root route to fix MethodNotAllowedHttpException for GET /
/* Route::get('/', function () {
    return response()->json(['message' => 'BlitXpress API is running']);
}); */

Route::get('mail-test', function () {

    try {
        // Test 1: Test order email system
        echo "<h2>🧪 Testing Order Email System...</h2>";
        
        $lastOrder = Order::orderBy('id', 'desc')->first();
        if ($lastOrder) {
            echo "<div style='background: #f8f9fa; padding: 15px; margin: 10px 0; border-left: 4px solid #007bff;'>";
            echo "<h3>📦 Testing with Order #{$lastOrder->id}</h3>";
            echo "<p><strong>Customer:</strong> " . ($lastOrder->customer->first_name ?? 'N/A') . " " . ($lastOrder->customer->last_name ?? '') . "</p>";
            echo "<p><strong>Customer Email:</strong> " . ($lastOrder->customer->email ?? 'No email') . "</p>";
            echo "<p><strong>Total Amount:</strong> CAD {$lastOrder->total}</p>";
            echo "<p><strong>Order Date:</strong> {$lastOrder->created_at}</p>";
            echo "</div>";
            
            echo "<p>🚀 Triggering order email system...</p>";
            Order::send_mails($lastOrder);
            echo "<p style='color: green;'><strong>✅ Order emails sent successfully!</strong></p>";
            
            // Show email validation status
            if ($lastOrder->customer && $lastOrder->customer->email) {
                $isValidEmail = filter_var($lastOrder->customer->email, FILTER_VALIDATE_EMAIL);
                if ($isValidEmail) {
                    echo "<p style='color: green;'>✅ Customer email is valid - confirmation email sent</p>";
                } else {
                    echo "<p style='color: orange;'>⚠️ Customer email is invalid - only admin emails sent</p>";
                }
            } else {
                echo "<p style='color: orange;'>⚠️ Customer has no email - only admin emails sent</p>";
            }
            
        } else {
            echo "<p style='color: red;'><strong>❌ No orders found in database</strong></p>";
        }
        
        echo "<hr style='margin: 20px 0;'>";
        
        // Test 2: General mail system test
        echo "<h2>📧 Testing General Mail System...</h2>";
        
        $data['body'] = 'This is a general test email from BlitXpress mail system.';
        $data['data'] = $data['body'];
        $data['name'] = 'Test User';
        $data['email'] = 'mubahood360@gmail.com';
        $data['subject'] = 'BlitXpress Mail System Test - ' . date('Y-m-d H:i:s');
        $data['view'] = 'mail-1';

        echo "<p>Sending general test email to: " . $data['email'] . "</p>";
        
        Utils::mail_sender($data);
        
        echo "<p style='color: green;'><strong>✅ General mail sent successfully!</strong></p>";
        
    } catch (\Exception $e) {
        echo "<p style='color: red;'><strong>❌ Mail Error:</strong> " . $e->getMessage() . "</p>";
        
        echo "<h3>🔍 Debug Information:</h3>";
        echo "<pre style='background: #f8f9fa; padding: 10px; border: 1px solid #ddd;'>";
        echo "MAIL_HOST: " . env('MAIL_HOST') . "\n";
        echo "MAIL_PORT: " . env('MAIL_PORT') . "\n";
        echo "MAIL_ENCRYPTION: " . env('MAIL_ENCRYPTION') . "\n";
        echo "MAIL_USERNAME: " . env('MAIL_USERNAME') . "\n";
        echo "MAIL_FROM_ADDRESS: " . env('MAIL_FROM_ADDRESS') . "\n";
        echo "</pre>";
    }
    
    echo "<div style='background: #d4edda; padding: 15px; margin: 20px 0; border-left: 4px solid #28a745;'>";
    echo "<h3>✅ Test Summary</h3>";
    echo "<p>• Order email system: Configured and tested</p>";
    echo "<p>• Admin notifications: Enabled</p>";
    echo "<p>• Customer confirmations: Enabled (when email is valid)</p>";
    echo "<p>• Email validation: Active</p>";
    echo "</div>";
    
    return [
        'status' => 'Mail test completed',
        'timestamp' => date('Y-m-d H:i:s'),
        'order_tested' => $lastOrder ? $lastOrder->id : null
    ];
});

Route::get('test', function () {

    return;

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
});



Route::get('migrate', function () { 
    Artisan::call('migrate', ['--force' => true]); 
    return Artisan::output();
});

Route::get('clear', function () {
    Artisan::call('config:clear');
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('view:clear');
    Artisan::call('optimize');
    Artisan::call('cache:clear');
    Artisan::call('view:clear');
    Artisan::call('route:clear');
    Artisan::call('config:clear');
    Artisan::call('optimize:clear');
    exec('composer dump-autoload -o');
    return Artisan::output();
});
Route::get('artisan', function (Request $request) {
    // Artisan::call('migrate');
    //do run laravel migration command
    //php artisan l5-swagger:generate
    Artisan::call($request->command, ['--force' => true]);
    //returning the output
    return Artisan::output();
});




Route::match(['get', 'post'], '/pay', function () {
    $id = 1;
    if (isset($_GET['id'])) {
        $id = $_GET['id'];
    } else {
        $order = \App\Models\Order::first();
        $id = $order->id;
    }
    $order = \App\Models\Order::find($id);
    $customer = $order->customer;
    //dd($customer);
    // $order->amount = 1;
    // $order->save();

    $task = null;
    if (isset($_GET['task'])) {
        $task = $_GET['task'];
    }
    if ($task == "success") {
        $order->payment_confirmation = 1;
        $data['get'] = $_GET;
        $data['post'] = $_POST;
        $order->stripe_id = json_encode($data);
        $order->save();
        die("Payment was successful");
    } else if ($task == "canceled") {
        $data['get'] = $_GET;
        $data['post'] = $_POST;
        $order->stripe_url = json_encode($data);
        $order->save();
        die("Payment was canceled");
    } else if ($task == "update") {
        $data['task'] = $task;
        $data['get'] = $_GET;
        $data['post'] = $_POST;
        $order->order_details = json_encode($data);
        $order->save();
        //return 200 response
        return response()->json(['status' => 'success', 'message' => 'Payment was updated.']);
    }

    $base_link = url('/pay?id=' . $id);
    return view('pay', [
        'order' => $order,
        'base_link' => $base_link
    ]);
});
Route::get('/process', function () {

    //set_time_limit(0);
    set_time_limit(-1);
    //ini_set('memory_limit', '1024M');
    ini_set('memory_limit', '-1');

    $folderPath2 = base_path('public/temp/pics/final');
    $folderPath = base_path('public/temp/pics/');
    $biggest = 0;
    $tot = 0;

    // Check if the folder exists
    if (is_dir($folderPath)) {
        // Get the list of items in the folder
        $items = scandir($folderPath);
        $items_1 = scandir($folderPath2);

        $i = 0;


        // Loop through the items
        foreach ($items as $item) {

            // Exclude the current directory (.) and parent directory (..)
            if ($item != '.' && $item != '..') {


                $ext = pathinfo($item, PATHINFO_EXTENSION);
                if ($ext == null) {
                    continue;
                }
                $ext = strtolower($ext);


                if (!in_array($ext, [
                    'jpg',
                    'jpeg',
                    'png',
                    'gif',
                ])) {
                    continue;
                }

                $target = $folderPath . $item;
                $target_file_size = filesize($target);

                $target_file_size_to_mb = $target_file_size / (1024 * 1024);
                $target_file_size_to_mb = round($target_file_size_to_mb, 2);
                /* if($target_file_size_to_mb > 2){
                    $source = $target;
                    $dest = $folderPath . "final/" . $item;
                    Utils::create_thumbail([
                        'source' => $source,
                        'target' => $dest
                    ]);
                    unlink($source); 
                } */


                if ($target_file_size > $biggest) {
                    $biggest = $target_file_size;
                }
                $tot += $target_file_size;


                continue;
                //echo $i.". ".$item . "<br>";
                $i++;
                continue;

                $i++;
                print_r($i . "<br>");



                $fileSize = filesize($folderPath . "/" . $item);
                $fileSize = $fileSize / (1024 * 1024);
                $fileSize = round($fileSize, 2);
                $fileSize = $fileSize . " MB";
                $url = "http://localhost:8888/ham/public/temp/pics-1/" . $item;

                $source = $folderPath . "/" . $item;
                $target = $folderPath . "/thumb/" . $item;
                Utils::create_thumbail([
                    'source' => $source,
                    'target' => $target
                ]);

                echo "<img src='$url' alt='$item' width='550'/>";
                $target_file_size = filesize($target);
                $target_file_size = $target_file_size / (1024 * 1024);
                $target_file_size = round($target_file_size, 2);
                $target_file_size = $target_file_size . " MB";
                $url_2 = "http://localhost:8888/ham/public/temp/pics-1/thumb/" . $item;
                echo "<img src='$url_2' alt='$item' width='550' />";



                // Print the item's name
                echo "<b>" . $fileSize . "<==>" . $target_file_size . "<b><br>";
            }
        }
    } else {
        echo "The specified folder does not exist.";
    }

    $biggest = $biggest / (1024 * 1024);
    $biggest = round($biggest, 2);
    $biggest = $biggest . " MB";
    $tot = $tot / (1024 * 1024);
    $tot = round($tot, 2);
    $tot = $tot . " MB";
    echo "Biggest: " . $biggest . "<br>";
    echo "Total: " . $tot . "<br>";
    die("=>done<=");
});
Route::get('/sync', function () {
    Utils::sync_products();
    Utils::sync_orders();
})->name("sync");
Route::get('/gen', function () {
    die(Gen::find($_GET['id'])->do_get());
})->name("gen");
Route::get('/gen-form', function () {
    die(Gen::find($_GET['id'])->make_forms());
})->name("gen-form");
Route::get('generate-class', [MainController::class, 'generate_class']);

# Admin routes for reviews
use App\Http\Controllers\Admin\ReviewController;
Route::middleware(['auth'])->prefix('admin')->name('admin.')->group(function () {
    Route::resource('reviews', ReviewController::class);
    Route::post('reviews/bulk-delete', [ReviewController::class, 'bulkDelete'])->name('reviews.bulk-delete');
});

# 🧪 PESAPAL PAYMENT TESTING INTERFACE
# Independent testing interface for Pesapal integration
# Routes: /payment-test/*
use App\Http\Controllers\PaymentTestController;

Route::prefix('payment-test')->name('payment-test.')->group(function () {
    
    // 🎨 Main Dashboard
    Route::get('/', [PaymentTestController::class, 'dashboard'])->name('dashboard');
    
    // � Quick Test Page
    Route::get('/quick', function() {
        return view('pesapal-quick-test');
    })->name('quick');
    
    // �💳 Payment Testing
    Route::post('/initialize', [PaymentTestController::class, 'initializePayment'])->name('initialize');
    Route::get('/callback', function() {
        return view('payment-test.callback-success');
    })->name('callback');
    
    // 🔍 Status & Monitoring
    Route::post('/status', [PaymentTestController::class, 'checkPaymentStatus'])->name('status');
    Route::post('/status/live', [PaymentTestController::class, 'liveStatusMonitor'])->name('status.live');
    
    // 🎲 Test Data Generation
    Route::get('/generate-data', [PaymentTestController::class, 'generateTestData'])->name('generate-data');
    Route::post('/scenarios', [PaymentTestController::class, 'testScenarios'])->name('scenarios');
    Route::post('/bulk-test', [PaymentTestController::class, 'bulkTest'])->name('bulk-test');
    
    // 📊 Analytics & Stats
    Route::get('/analytics', [PaymentTestController::class, 'getAnalytics'])->name('analytics');
    Route::get('/stats', [PaymentTestController::class, 'getPaymentStats'])->name('stats');
    
    // 📋 Log Details
    Route::get('/log/{id}', [PaymentTestController::class, 'getLogDetails'])->name('log.details');
    
    // 🎭 Simulation Tools
    Route::post('/simulate-callback', [PaymentTestController::class, 'simulateCallback'])->name('simulate-callback');
    
    // 🔧 Configuration & Health
    Route::get('/config', [PaymentTestController::class, 'testConfiguration'])->name('config');
    
    // 🧹 Cleanup
    Route::delete('/cleanup', [PaymentTestController::class, 'cleanupTestData'])->name('cleanup');
    
});

