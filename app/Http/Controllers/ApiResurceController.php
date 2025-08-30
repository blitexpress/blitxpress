<?php

namespace App\Http\Controllers;

use App\Models\Association;
use App\Models\ChatHead;
use App\Models\ChatMessage;
use App\Models\CounsellingCentre;
use App\Models\Crop;
use App\Models\CropProtocol;
use App\Models\DeliveryAddress;
use App\Models\Event;
use App\Models\Garden;
use App\Models\GardenActivity;
use App\Models\Group;
use App\Models\Image;
use App\Models\Institution;
use App\Models\Job;
use App\Models\Location;
use App\Models\NewsPost;
use App\Models\Order;
use App\Models\OrderedItem;
use App\Models\Person;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\SearchHistory;
use App\Models\ServiceProvider;
use App\Models\User;
use App\Models\Utils;
use App\Services\PesapalService;
use App\Traits\ApiResponser;
use Carbon\Carbon;
use Encore\Admin\Auth\Database\Administrator;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Throwable;

class ApiResurceController extends Controller
{

    use ApiResponser;


    public function become_vendor(Request $request)
    {
        $administrator_id = $request->user;

        $u = Administrator::find($administrator_id);
        if ($u == null) {
            return $this->error('User not found.');
        }

        if (
            $request->first_name == null ||
            strlen($request->first_name) < 2
        ) {
            return $this->error('First name is missing.');
        }
        //validate all
        if (
            $request->last_name == null ||
            strlen($request->last_name) < 2
        ) {
            return $this->error('Last name is missing.');
        }

        //validate all
        if (
            $request->business_name == null ||
            strlen($request->business_name) < 2
        ) {
            return $this->error('Business name is missing.');
        }

        if (
            $request->business_license_number == null ||
            strlen($request->business_license_number) < 2
        ) {
            return $this->error('Business license number is missing.');
        }

        if (
            $request->business_license_issue_authority == null ||
            strlen($request->business_license_issue_authority) < 2
        ) {
            return $this->error('Business license issue authority is missing.');
        }

        if (
            $request->business_license_issue_date == null ||
            strlen($request->business_license_issue_date) < 2
        ) {
            return $this->error('Business license issue date is missing.');
        }

        if (
            $request->business_license_validity == null ||
            strlen($request->business_license_validity) < 2
        ) {
            return $this->error('Business license validity is missing.');
        }

        if (
            $request->business_address == null ||
            strlen($request->business_address) < 2
        ) {
            return $this->error('Business address is missing.');
        }

        if (
            $request->business_phone_number == null ||
            strlen($request->business_phone_number) < 2
        ) {
            return $this->error('Business phone number is missing.');
        }

        if (
            $request->business_whatsapp == null ||
            strlen($request->business_whatsapp) < 2
        ) {
            return $this->error('Business whatsapp is missing.');
        }

        if (
            $request->business_email == null ||
            strlen($request->business_email) < 2
        ) {
            return $this->error('Business email is missing.');
        }




        $msg = "";
        $u->first_name = $request->first_name;
        $u->last_name = $request->last_name;
        $u->nin = $request->campus_id;
        $u->business_name = $request->business_name;
        $u->business_license_number = $request->business_license_number;
        $u->business_license_issue_authority = $request->business_license_issue_authority;
        $u->business_license_issue_date = $request->business_license_issue_date;
        $u->business_license_validity = $request->business_license_validity;
        $u->business_address = $request->business_address;
        $u->business_phone_number = $request->business_phone_number;
        $u->business_whatsapp = $request->business_whatsapp;
        $u->business_email = $request->business_email;
        $u->business_cover_photo = $request->business_cover_photo;
        $u->business_cover_details = $request->business_cover_details;


        if ($u->status != 'Active') {
            $u->status = 'Pending';
        }

        $images = [];
        if (!empty($_FILES)) {
            $images = Utils::upload_images_2($_FILES, false);
        }
        if (!empty($images)) {
            $u->business_logo = 'images/' . $images[0];
        }

        $code = 1;
        try {
            $u->save();
            $msg = "Submitted successfully.";
            return $this->success($u, $msg, $code);
        } catch (\Throwable $th) {
            $msg = $th->getMessage();
            $code = 0;
            return $this->error($msg);
        }
        return $this->success(null, $msg, $code);
    }


    public function update_profile(Request $request)
    {
        $administrator_id = $request->user;

        $u = Administrator::find($administrator_id);
        if ($u == null) {
            return $this->error('User not found.');
        }

        // Log the incoming data for debugging - expanded logging
        Log::info('Profile update request - All data:', [
            'all_request_data' => $request->all(),
            'first_name_raw' => $request->first_name,
            'first_name_exists' => $request->has('first_name'),
            'first_name_filled' => $request->filled('first_name'),
            'request_method' => $request->method(),
            'content_type' => $request->header('Content-Type'),
        ]);

        // Validate required fields with detailed logging
        $first_name = trim($request->first_name ?? '');
        if (empty($first_name) || strlen($first_name) < 2) {
            Log::warning('First name validation failed', [
                'first_name_raw' => $request->first_name,
                'first_name_trimmed' => $first_name,
                'trimmed_length' => strlen($first_name)
            ]);
            return $this->error('First name is required and must be at least 2 characters.');
        }

        $last_name = trim($request->last_name ?? '');
        if (empty($last_name) || strlen($last_name) < 2) {
            Log::warning('Last name validation failed', [
                'last_name_raw' => $request->last_name,
                'last_name_trimmed' => $last_name,
                'trimmed_length' => strlen($last_name)
            ]);
            return $this->error('Last name is required and must be at least 2 characters.');
        }

        $phone_number_1 = trim($request->phone_number_1 ?? '');
        if (empty($phone_number_1) || strlen($phone_number_1) < 5) {
            Log::warning('Phone number validation failed', [
                'phone_number_1_raw' => $request->phone_number_1,
                'phone_number_1_trimmed' => $phone_number_1,
                'trimmed_length' => strlen($phone_number_1)
            ]);
            return $this->error('Phone number is required and must be at least 5 characters.');
        }

        // Check for duplicate phone number
        $anotherUser = Administrator::where('phone_number', $request->phone_number_1)
            ->where('id', '!=', $u->id)
            ->first();
        if ($anotherUser != null) {
            return $this->error('Phone number is already taken.');
        }

        // Check for duplicate username (phone)
        $anotherUser = Administrator::where('username', $request->phone_number_1)
            ->where('id', '!=', $u->id)
            ->first();
        if ($anotherUser != null) {
            return $this->error('Phone number is already taken.');
        }

        // Validate email if provided
        if ($request->email != null && strlen($request->email) > 5) {
            if (!filter_var($request->email, FILTER_VALIDATE_EMAIL)) {
                return $this->error('Invalid email address.');
            }

            $anotherUser = Administrator::where('email', $request->email)
                ->where('id', '!=', $u->id)
                ->first();
            if ($anotherUser != null) {
                return $this->error('Email is already taken.');
            }

            $anotherUser = Administrator::where('username', $request->email)
                ->where('id', '!=', $u->id)
                ->first();
            if ($anotherUser != null) {
                return $this->error('Email is already taken.');
            }
        }

        // Validate date of birth if provided
        if ($request->date_of_birth != null && strlen($request->date_of_birth) > 0) {
            try {
                $date = \Carbon\Carbon::createFromFormat('Y-m-d', $request->date_of_birth);
                if ($date->isFuture()) {
                    return $this->error('Date of birth cannot be in the future.');
                }
            } catch (\Exception $e) {
                return $this->error('Invalid date of birth format. Use YYYY-MM-DD.');
            }
        }

        try {
            // Update basic information using the validated trimmed values
            $u->first_name = ucfirst($first_name);
            $u->last_name = ucfirst($last_name);
            $u->phone_number = $phone_number_1;  // Correct database field
            $u->name = ucfirst($first_name) . ' ' . ucfirst($last_name);  // Update full name
            
            // Update email if provided
            if ($request->email != null && strlen($request->email) > 5) {
                $u->email = strtolower(trim($request->email));
            }

            // Update optional fields
            if ($request->date_of_birth != null) {
                $u->dob = $request->date_of_birth; // Correct database field is 'dob'
            }

            if ($request->gender != null && in_array($request->gender, ['male', 'female', 'other', 'prefer-not-to-say'])) {
                $u->sex = $request->gender;
            }

            // Also handle 'sex' field directly for compatibility
            if ($request->sex != null && in_array($request->sex, ['male', 'female', 'other', 'prefer-not-to-say'])) {
                $u->sex = $request->sex;
            }

            if ($request->bio != null) {
                $u->intro = trim($request->bio);
            }

            // Also handle 'intro' field directly for compatibility
            if ($request->intro != null) {
                $u->intro = trim($request->intro);
            }

            if ($request->address != null) {
                $u->address = ucfirst(trim($request->address));
                $u->current_address = ucfirst(trim($request->address));
            }

            // Handle avatar upload if provided
            $images = [];
            if (!empty($_FILES)) {
                $images = Utils::upload_images_2($_FILES, false);
                if (!empty($images)) {
                    $u->avatar = 'images/' . $images[0];
                }
            }

            $u->save();

            // Return updated user data
            $updatedUser = Administrator::find($u->id);
            return $this->success($updatedUser, "Profile updated successfully.", 1);

        } catch (\Throwable $th) {
            return $this->error('Failed to update profile: ' . $th->getMessage());
        }
    }


    public function delete_profile(Request $request)
    {
        $administrator_id = $request->user;

        $u = Administrator::find($administrator_id);
        if ($u == null) {
            return $this->error('User not found.');
        }
        $u->status = 'Deleted';
        $u->save();
        return $this->success(null, $message = "Deleted successfully!", 1);

        if (
            $request->first_name == null ||
            strlen($request->first_name) < 2
        ) {
            return $this->error('First name is missing.');
        }
        //validate all
        if (
            $request->last_name == null ||
            strlen($request->last_name) < 2
        ) {
            return $this->error('Last name is missing.');
        }

        if (
            $request->phone_number_1 == null ||
            strlen($request->phone_number_1) < 5
        ) {
            return $this->error('Phone number is requried.');
        }

        $anotherUser = Administrator::where([
            'phone_number' => $request->phone_number_1
        ])->first();
        if ($anotherUser != null) {
            if ($anotherUser->id != $u->id) {
                return $this->error('Phone number is already taken.');
            }
        }

        $anotherUser = Administrator::where([
            'username' => $request->phone_number_1
        ])->first();
        if ($anotherUser != null) {
            if ($anotherUser->id != $u->id) {
                return $this->error('Phone number is already taken.');
            }
        }

        $anotherUser = Administrator::where([
            'email' => $request->phone_number_1
        ])->first();
        if ($anotherUser != null) {
            if ($anotherUser->id != $u->id) {
                return $this->error('Phone number is already taken.');
            }
        }

        if (
            $request->email != null &&
            strlen($request->email) > 5
        ) {
            $anotherUser = Administrator::where([
                'email' => $request->email
            ])->first();
            if ($anotherUser != null) {
                if ($anotherUser->id != $u->id) {
                    return $this->error('Email is already taken.');
                }
            }
            //check for username as well
            $anotherUser = Administrator::where([
                'username' => $request->email
            ])->first();
            if ($anotherUser != null) {
                if ($anotherUser->id != $u->id) {
                    return $this->error('Email is already taken.');
                }
            }
            //validate email
            if (!filter_var($request->email, FILTER_VALIDATE_EMAIL)) {
                return $this->error('Invalid email address.');
            }
        }



        $msg = "";
        //first letter to upper case
        $u->first_name = $request->first_name;

        //change first letter to upper case
        $u->first_name = ucfirst($u->first_name);


        $u->last_name = ucfirst($request->last_name);
        $u->phone_number = $request->phone_number_1;
        $u->email = $request->email;
        $u->address = ucfirst($request->address);

        $images = [];
        if (!empty($_FILES)) {
            $images = Utils::upload_images_2($_FILES, false);
        }
        if (!empty($images)) {
            $u->avatar = 'images/' . $images[0];
        }

        $code = 1;
        try {
            $u->save();
            $msg = "Updated successfully.";
            return $this->success($u, $msg, $code);
        } catch (\Throwable $th) {
            $msg = $th->getMessage();
            $code = 0;
            return $this->error($msg);
        }
        return $this->success(null, $msg, $code);
    }

    public function password_change(Request $request)
    {
        $administrator_id = $request->user;

        $u = Administrator::find($administrator_id);
        if ($u == null) {
            return $this->error('User not found.');
        }

        if (
            $request->password == null ||
            strlen($request->password) < 2
        ) {
            return $this->error('Password is missing.');
        }

        //check if  current_password 
        if (
            $request->current_password == null ||
            strlen($request->current_password) < 2
        ) {
            return $this->error('Current password is missing.');
        }

        //check if  current_password
        if (
            !(password_verify($request->current_password, $u->password))
        ) {
            return $this->error('Current password is incorrect.');
        }

        $u->password = password_hash($request->password, PASSWORD_DEFAULT);
        $msg = "";
        $code = 1;
        try {
            $u->save();
            $msg = "Password changed successfully.";
            return $this->success($u, $msg, $code);
        } catch (\Throwable $th) {
            $msg = $th->getMessage();
            $code = 0;
            return $this->error($msg);
        }
        return $this->success(null, $msg, $code);
    }

    public function account_verification(Request $request)
    {
        $administrator_id = $request->user;
        $u = User::find($administrator_id);
        if ($u == null) {
            return $this->error('User not found.');
        }

        if ($request->task == null) {
            return $this->error('Task is missing.');
        }

        if (
            $request->email == null ||
            strlen($request->email) < 2
        ) {
            return $this->error('Email is missing.');
        }

        $other_user = User::where([
            'email' => $request->email
        ])->first();

        if ($other_user != null) {
            if ($other_user->id != $u->id) {
                return $this->error('Email is already taken.');
            }
        }
        $other_user = User::where([
            'username' => $request->email
        ])->first();
        if ($other_user != null) {
            if ($other_user->id != $u->id) {
                return $this->error('Email is already taken.');
            }
        }

        if ($request->task == 'request_verification_code') {
            try {
                $u->send_verification_code($request->email);
            } catch (\Throwable $th) {
                return $this->error('Failed to send verification code because ' . $th->getMessage() . '.');
            }
            return $this->success($u, 'Verification code sent to your email address ' . $u->email . '.');
        } else if ($request->task == 'verify_code') {
            $code = $request->code;
            if ($code == null || strlen($code) < 3) {
                return $this->error('Code is required.');
            }
            if ($u->intro != $code) {
                return $this->error('Invalid code.');
            }
            $u->complete_profile = 'Yes';
            $u->email = $request->email;
            $u->username = $request->email;
            try {
                $u->save();
            } catch (\Throwable $th) {
                return $this->error('Failed to verify email because ' . $th->getMessage() . '.');
            }
            return $this->success($u, 'Email verified successfully.');
        }
        return $this->error('Task not found.');
    }



    public function upload_media(Request $request)
    {
        $administrator_id = $request->user;

        $u = Administrator::find($administrator_id);
        if ($u == null) {
            return $this->error('User not found.');
        }

        if (
            !isset($request->parent_local_id) ||
            $request->parent_local_id == null
        ) {
            return $this->error('Local parent ID is missing.');
        }

        //  strlen($request->parent_local_id) < 6
        if (
            strlen($request->parent_local_id) < 6
        ) {
            return $this->error('Local parent ID is too short.');
        }


        if (
            empty($_FILES)
        ) {
            return $this->error('No files found.');
        }



        $images = Utils::upload_images_2($_FILES, false);
        $_images = [];


        if (empty($images)) {
            return $this->error('Failed to upload files.');
        }

        $msg = "";
        foreach ($images as $src) {

            $img = new Image();
            $img->administrator_id =  $administrator_id;
            $img->src =  $src;
            $img->thumbnail =  null;
            $img->parent_endpoint =  $request->parent_endpoint;
            $img->parent_local_id =  $request->parent_local_id;
            $img->type =  $request->type;
            $img->parent_id =  (int)($request->parent_id);
            $pro = Product::where(['local_id' => $img->parent_local_id])->first();
            $img->product_id =  null;
            if ($pro != null) {
                $img->product_id =  $pro->id;
            }
            $img->size = 0;
            $img->note = '';
            if (
                isset($request->note)
            ) {
                $img->note =  $request->note;
            }
            $img->save();
            $_images[] = $img;
        }

        return $this->success(
            null,
            count($_images) . " Files uploaded successfully."
        );
    }



    public function vendors(Request $r)
    {
        $vendors = Administrator::where([
            'user_type' => 'Vendor'
        ])->get();
        return $this->success($vendors, $message = "Success!", 200);
    }


    public function order(Request $r)
    {

        $order = Order::find($r->id);
        if ($order == null) {
            return $this->error('Order not found.');
        }

        if ($order->stripe_url == null || strlen($order->stripe_url) < 8) {
            /*   $order->create_payment_link();
            $order->save(); */
        }

        return $this->success($order, $message = "Success!", 200);
    }

    //product_get_by_id
    public function product_get_by_id(Request $r)
    {
        try {
            $product = Product::with(['specifications', 'productCategory'])->find($r->id);
            if ($product == null) {
                return $this->error('Product not found.');
            }

            // Add computed attributes for better frontend consumption
            $product->tags_array = $product->tags_array;
            
            // Safe specifications mapping
            $product->attributes_array = $product->specifications ? $product->specifications->map(function ($attr) {
                return [
                    'name' => $attr->name ?? '',
                    'value' => $attr->value ?? '',
                ];
            })->toArray() : [];

            // Add category information if available
            $product->category_info = [];
            if ($product->productCategory) {
                $product->category_info = [
                    'id' => $product->productCategory->id,
                    'name' => $product->productCategory->name ?? '',
                    'description' => $product->productCategory->description ?? '',
                ];
            }

            return $this->success($product, $message = "Success!", 200);
        } catch (\Exception $e) {
            \Log::error('Error in product_get_by_id: ' . $e->getMessage());
            return $this->error('Unable to retrieve product data. Please try again later.');
        }
    }

    //orders_get_by_id
    public function orders_get_by_id(Request $r)
    {
        $order = Order::find($r->id);
        if ($order == null) {
            return $this->error('Order not found.');
        }
        return $this->success($order, $message = "Success!", 200);
    }


    public function orders_get(Request $r)
    {

        $u = auth('api')->user();
        if ($u == null) {
            $administrator_id = Utils::get_user_id($r);
            $u = Administrator::find($administrator_id);
        }

        if ($u == null) {
            return $this->error('User not found.');
        }
        $orders = [];

        foreach (
            Order::where([
                'user' => $u->id
            ])->get() as $order
        ) {
            $items = $order->get_items();
            $order->items = json_encode($items);
            $orders[] = $order;
        }
        return $this->success($orders, $message = "Success!", 200);
    }


    public function orders_cancel(Request $r)
    {

        $u = auth('api')->user();
        if ($u == null) {
            $administrator_id = Utils::get_user_id($r);
            $u = Administrator::find($administrator_id);
        }

        if ($u == null) {
            return $this->error('User not found.');
        }

        $order = Order::find($r->id);
        if ($order == null) {
            return $this->error('Order not found.');
        }
        $order->delete();
        return $this->success(null, $message = "Cancelled successfully!", 200);
    }
    public function my_profile(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            $administrator_id = Utils::get_user_id($r);
            $u = Administrator::find($administrator_id);
        }

        if ($u == null) {
            return $this->error('User not found.');
        }
        $data[] = $u;
        return $this->success($data, $message = "Success!", 200);
    }


    public function orders_create(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            $administrator_id = Utils::get_user_id($r);
            $u = Administrator::find($administrator_id);
        }


        if ($u == null) {
            return $this->error('User not found.');
        }

        $items = [];
        try {
            $items = json_decode($r->items);
        } catch (\Throwable $th) {
            $items = [];
        }
        foreach ($items as $key => $value) {
            $p = Product::find($value->product_id);
            if ($p == null) {
                return $this->error("Product #" . $value->product_id . " not found.");
            }
        }


        $delivery = null;
        try {
            $delivery = json_decode($r->delivery);
        } catch (\Throwable $th) {
            $delivery = null;
        }

        if ($delivery == null) {
            return $this->error('Delivery information is missing.');
        }
        if ($delivery->customer_phone_number_1 == null) {
            $delivery->customer_phone_number_1 = $u->phone_number;
        }

        $order = new Order();
        $order->user = $u->id;
        $order->order_state = 0;
        $order->temporary_id = 0;
        $order->amount = 0;
        $order->order_total = 0;
        $order->payment_confirmation = '';
        $order->payment_gateway = 'manual'; // Default payment gateway for existing method
        $order->payment_status = 'PENDING_PAYMENT';
        $order->description = '';
        $order->mail = $u->email;
        $delivery_amount = 0;
        if ($delivery != null) {
            try {

                $order->order_details = json_encode($delivery);

                $del_loc = DeliveryAddress::find($delivery->delivery_district);
                if ($del_loc != null) {


                    $delivery_amount = (int)($del_loc->shipping_cost);

                    $order->date_created = $delivery->date_created;
                    $order->date_updated = $delivery->date_updated;
                    $order->mail = $delivery->mail;
                    $order->delivery_district = $delivery->delivery_district;
                    $order->description = $delivery->description;
                    $order->customer_name = $delivery->customer_name;
                    $order->customer_phone_number_1 = $delivery->customer_phone_number_1;
                    $order->customer_phone_number_2 = $delivery->customer_phone_number_2;
                    $order->customer_address = $delivery->customer_address;
                }
            } catch (\Throwable $th) {
            }
        }

        $order->save();


        $order_total = 0;
        foreach ($items as $key => $item) {
            $product = Product::find($item->product_id);
            if ($product == null) {
                return $this->error("Product #" . $item->product_id . " not found.");
            }
            $oi = new OrderedItem();
            $oi->order = $order->id;
            $oi->product = $item->product_id;
            $oi->qty = $item->product_quantity;
            $oi->amount = $product->price_1;
            $oi->color = $item->color;
            $oi->size = $item->size;
            $order_total += ($product->price_1 * $oi->qty);
            $oi->save();
        }
        $order->amount = $order_total + $delivery_amount;
        $order->order_total = $order->amount;


        $order->save();
        $order = Order::find($order->id);

        // Send response first
        $response = $this->success($order, "Submitted successfully!");
        
        // After response is prepared, trigger email in background
        register_shutdown_function(function() use ($order) {
            try {
                \App\Models\Order::send_mails($order);
            } catch (\Throwable $th) {
                Log::error('Background email error for order ' . $order->id . ': ' . $th->getMessage());
            }
        });

        return $response;
    }



    public function orders_submit(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            $administrator_id = Utils::get_user_id($r);
            $u = Administrator::find($administrator_id);
        }

        $items = [];
        try {
            $items = json_decode($r->items);
        } catch (\Throwable $th) {
            $items = [];
        }
        foreach ($items as $key => $value) {
            $p = Product::find($value->product_id);
            if ($p == null) {
                return $this->error("Product #" . $value->product_id . " not found.");
            }
        }

        if ($u == null) {
            return $this->error('User not found.');
        }

        $delivery = null;
        try {
            $delivery = json_decode($r->delivery);
        } catch (\Throwable $th) {
            $delivery = null;
        }

        if ($delivery == null) {
            return $this->error('Delivery information is missing.');
        }
        if ($delivery->phone_number == null) {
            return $this->error('Phone number is missing.');
        }

        $order = new Order();
        $order->user = $u->id;
        $order->order_state = 0;
        $order->temporary_id = 0;
        $order->amount = 0;
        $order->order_total = 0;
        $order->payment_confirmation = '';
        $order->payment_gateway = 'manual'; // Default payment gateway for existing method
        $order->payment_status = 'PENDING_PAYMENT';
        $order->description = '';
        $order->mail = $u->email;
        $order->date_created = Carbon::now();
        $order->date_updated = Carbon::now();
        if ($delivery != null) {
            try {
                $order->customer_phone_number_1 = $delivery->phone_number;
                $order->customer_phone_number_2 = $delivery->phone_number_2;
                $order->customer_name = $delivery->first_name . " " . $delivery->last_name;
                $order->customer_address = $delivery->current_address;
                $order->delivery_district = $delivery->current_address;
                $order->order_details = json_encode($delivery);
            } catch (\Throwable $th) {
            }
        }

        $order->save();


        $order_total = 0;
        foreach ($items as $key => $item) {
            $product = Product::find($item->product_id);
            if ($product == null) {
                return $this->error("Product #" . $item->product_id . " not found.");
            }
            $oi = new OrderedItem();
            $oi->order = $order->id;
            $oi->product = $item->product_id;
            $oi->qty = $item->product_quantity;
            $oi->amount = $product->price_1;
            $oi->color = $item->color;
            $oi->size = $item->size;
            $order_total += ($product->price_1 * $oi->qty);
            $oi->save();
        }
        $order->order_total = $order_total;
        $order->amount = $order_total;
        $order->save();

        /* if ($order->stripe_url == null || strlen($order->stripe_url) < 6) {
            $order->create_payment_link();
            $order->save();
        } */
        $order = Order::find($order->id);

        // Send response first
        $response = $this->success($order, "Submitted successfully!");
        
        // After response is prepared, trigger email in background
        register_shutdown_function(function() use ($order) {
            try {
                \App\Models\Order::send_mails($order);
            } catch (\Throwable $th) {
                Log::error('Background email error for order ' . $order->id . ': ' . $th->getMessage());
            }
        });

        return $response;
    }

    /**
     * Create order with Pesapal payment integration
     * POST /api/orders-with-payment
     */
    public function orders_with_payment(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            $administrator_id = Utils::get_user_id($r);
            $u = Administrator::find($administrator_id);
        }

        if ($u == null) {
            return $this->error('User not found.');
        }

        $items = [];
        try {
            $items = json_decode($r->items);
        } catch (\Throwable $th) {
            $items = [];
        }

        if (empty($items)) {
            return $this->error('Order items are required.');
        }

        foreach ($items as $key => $value) {
            $p = Product::find($value->product_id);
            if ($p == null) {
                return $this->error("Product #" . $value->product_id . " not found.");
            }
        }

        $delivery = null;
        try {
            $delivery = json_decode($r->delivery);
        } catch (\Throwable $th) {
            $delivery = null;
        }

        if ($delivery == null) {
            return $this->error('Delivery information is missing.');
        }
        if ($delivery->phone_number == null) {
            return $this->error('Phone number is missing.');
        }

        // Validate payment gateway selection
        $paymentGateway = $r->payment_gateway ?? 'pesapal';
        if (!in_array($paymentGateway, ['pesapal', 'stripe', 'manual'])) {
            return $this->error('Invalid payment gateway. Supported: pesapal, stripe, manual.');
        }

        // Create the order
        $order = new Order();
        $order->user = $u->id;
        $order->order_state = 0;
        $order->temporary_id = 0;
        $order->amount = 0;
        $order->order_total = 0;
        $order->payment_confirmation = '';
        $order->payment_gateway = $paymentGateway;
        $order->payment_status = 'PENDING_PAYMENT';
        $order->description = '';
        $order->mail = $u->email;
        $order->date_created = Carbon::now();
        $order->date_updated = Carbon::now();
        
        if ($delivery != null) {
            try {
                $order->customer_phone_number_1 = $delivery->phone_number;
                $order->customer_phone_number_2 = $delivery->phone_number_2 ?? '';
                $order->customer_name = $delivery->first_name . " " . $delivery->last_name;
                $order->customer_address = $delivery->current_address;
                $order->delivery_district = $delivery->current_address;
                $order->order_details = json_encode($delivery);
            } catch (\Throwable $th) {
                Log::error('Error processing delivery details: ' . $th->getMessage());
            }
        }

        $order->save();

        // Add order items and calculate total
        $order_total = 0;
        foreach ($items as $key => $item) {
            $product = Product::find($item->product_id);
            if ($product == null) {
                return $this->error("Product #" . $item->product_id . " not found.");
            }
            $oi = new OrderedItem();
            $oi->order = $order->id;
            $oi->product = $item->product_id;
            $oi->qty = $item->product_quantity;
            $oi->amount = $product->price_1;
            $oi->color = $item->color ?? '';
            $oi->size = $item->size ?? '';
            $order_total += ($product->price_1 * $oi->qty);
            $oi->save();
        }

        // Add delivery cost if applicable
        $delivery_amount = 0;
        if (isset($delivery->delivery_district)) {
            $del_loc = DeliveryAddress::find($delivery->delivery_district);
            if ($del_loc != null) {
                $delivery_amount = (int)($del_loc->shipping_cost);
            }
        }

        $order->order_total = $order_total + $delivery_amount;
        $order->amount = $order->order_total;
        $order->save();

        // Initialize payment based on gateway selection
        $paymentData = null;
        try {
            if ($paymentGateway === 'pesapal') {
                $pesapalService = app(PesapalService::class);
                $callbackUrl = $r->callback_url ?? url("/api/pesapal/callback");
                
                // Get or register IPN URL
                $notificationId = $r->notification_id;
                if (!$notificationId) {
                    $ipnResponse = $pesapalService->registerIpnUrl();
                    $notificationId = $ipnResponse['ipn_id'] ?? null;
                    
                    if (!$notificationId) {
                        throw new \Exception('Failed to register IPN URL with Pesapal');
                    }
                }

                // Submit order to Pesapal
                $pesapalResponse = $pesapalService->submitOrderRequest(
                    $order, 
                    $notificationId, 
                    $callbackUrl
                );

                $paymentData = [
                    'payment_gateway' => 'pesapal',
                    'order_tracking_id' => $pesapalResponse['order_tracking_id'],
                    'merchant_reference' => $pesapalResponse['merchant_reference'],
                    'redirect_url' => $pesapalResponse['redirect_url'],
                    'status' => $pesapalResponse['status'] ?? '200'
                ];

            } elseif ($paymentGateway === 'stripe') {
                // Future: Implement Stripe integration
                $paymentData = [
                    'payment_gateway' => 'stripe',
                    'message' => 'Stripe integration not yet implemented',
                    'status' => 'pending'
                ];

            } else {
                // Manual payment
                $paymentData = [
                    'payment_gateway' => 'manual',
                    'message' => 'Manual payment selected. Please contact support for payment instructions.',
                    'status' => 'pending'
                ];
            }

        } catch (\Exception $e) {
            Log::error('Payment initialization failed for order ' . $order->id, [
                'error' => $e->getMessage(),
                'payment_gateway' => $paymentGateway
            ]);

            return $this->error('Payment initialization failed: ' . $e->getMessage());
        }

        // Refresh order data
        $order = Order::find($order->id);

        // Prepare response
        $responseData = [
            'order' => $order,
            'payment' => $paymentData
        ];

        // Send response first
        $response = $this->success($responseData, "Order created and payment initialized successfully!");
        
        // After response is prepared, trigger email in background
        register_shutdown_function(function() use ($order) {
            try {
                \App\Models\Order::send_mails($order);
            } catch (\Throwable $th) {
                Log::error('Background email error for order ' . $order->id . ': ' . $th->getMessage());
            }
        });

        return $response;
    }


    public function product_create(Request $r)
    {

        $user_id = $r->user;
        $u = User::find($user_id);
        if ($u == null) {
            return $this->error('User not found.');
        }

        //local_id is required
        if (
            !isset($r->local_id) ||
            $r->local_id == null ||
            strlen($r->local_id) < 6
        ) {
            return $this->error('Local ID is missing.');
        }
 

        $isEdit = false;
        if (
            isset($r->is_edit) && $r->is_edit == 'Yes' && $r->id != null
            && $r->id > 0
        ) {
            $pro = Product::find($r->id);
            if ($pro == null) {
                $pro = new Product();
                $isEdit = false;
            } else {
                $isEdit = true;
            }
        } else {
            $pro = new Product();
        }

        if (!$isEdit) {
            $pro->feature_photo = 'no_image.jpg';
            $pro->user = $u->id;
            $pro->supplier = $u->id;
            $pro->in_stock = 1;
            $pro->rates = 1;
        }


        if ($r->p_type == 'Yes') {
            if ($r->keywords ==  null) {
                return $this->error('Prices are missing.');
            }
            $my_prices = null;
            try {
                $my_prices = json_decode($r->keywords);
            } catch (\Throwable $th) {
                $my_prices = null;
            }
            //if not array
            if ($my_prices == null || !is_array($my_prices)) {
                return $this->error('Prices not found.');
            }
            //$my_prices if empty
            if (count($my_prices) < 1) {
                return $this->error('Prices not found.');
            }
            $prices = [];
            $min_price = 0;
            $max_price = 0;


            foreach ($my_prices as $key => $value) {
                if ($value->price == null || strlen($value->price) < 1) {
                    return $this->error('Price is missing.');
                }
                if ($value->min_qty == null || strlen($value->min_qty) < 1) {
                    return $this->error('Minimum quantity is missing.');
                }
                if ($value->max_qty == null || strlen($value->max_qty) < 1) {
                    return $this->error('Maximum quantity is missing.');
                }
                $my_min = (int)($value->min_qty);
                $my_max = (int)($value->max_qty);
                $price = (int)($value->price);
                if ($min_price < $my_min) {
                    $min_price = $my_min;
                }
                if ($max_price < $my_max) {
                    $max_price = $my_max;
                }
                $prices[] = $value;
            }

            $pro->price_1 = $min_price;
            $pro->price_2 = $max_price;
            $pro->keywords = $r->keywords;
        } else if ($r->p_type == 'No') {
            if ($r->price_1 == null || strlen($r->price_1) < 1) {
                return $this->error('Price is missing.');
            }
            if ($r->price_2 == null || strlen($r->price_2) < 1) {
                return $this->error('Price is missing.');
            }
            $pro->price_1 = $r->price_1;
            $pro->price_2 = $r->price_2;
        } else {
            return $this->error('Product type is missing.');
        }


        $pro->name = $r->name;
        $pro->description = $r->description;
        $pro->local_id = $r->local_id;
        $pro->summary = $r->data;
        $pro->metric = 1;
        $pro->status = 0;
        $pro->currency = 1;
        $pro->url = $u->url;


        $pro->has_sizes = $r->has_sizes;
        $pro->has_colors = $r->has_colors;
        $pro->colors = $r->colors;
        $pro->sizes = $r->sizes;
        $pro->p_type = $r->p_type;

        $cat = ProductCategory::find($r->category);
        if ($cat == null) {
            return $this->error('Category not found.');
        }
        $pro->category = $cat->id;

        $pro->date_added = Carbon::now();
        $pro->date_updated = Carbon::now();
        $imgs = Image::where([
            'parent_local_id' => $pro->local_id
        ])->get();
        if ($imgs->count() > 0) {
            $pro->feature_photo = $imgs[0]->src;
        }
        if ($pro->save()) {
            foreach ($imgs as $key => $img) {
                $img->product_id = $pro->id;
                $img->save();
            }
            if ($isEdit) {
                return $this->success(null, $message = "Updated successfully!", 200);
            }
            return $this->success(null, $message = "Submitted successfully!", 200);
        } else {
            return $this->error('Failed to upload product.');
        }
    }



    public function locations(Request $r)
    {
        $items = Location::all();
        return $this->success(
            $items,
            $message = "Sussesfully",
            1
        );
    }

    public function crops(Request $r)
    {
        $items = [];

        foreach (Crop::all() as $key => $crop) {


            $protocols = CropProtocol::where([
                'crop_id' => $crop->id
            ])->get();
            $crop->protocols = json_encode($protocols);

            $items[] = $crop;
        }

        return $this->success(
            $items,
            $message = "Sussesfully",
            200
        );
    }

    public function garden_activities(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            return $this->error('User not found.');
        }

        $gardens = [];
        if ($u->isRole('agent')) {
            $gardens = GardenActivity::where([])
                ->limit(1000)
                ->orderBy('id', 'desc')
                ->get();
        } else {
            $gardens = GardenActivity::where(['user_id' => $u->id])
                ->limit(1000)
                ->orderBy('id', 'desc')
                ->get();
        }

        return $this->success(
            $gardens,
            $message = "Sussesfully",
            200
        );
    }

    public function gardens(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            return $this->error('User not found.');
        }

        $gardens = [];
        if ($u->isRole('agent')) {
            $gardens = Garden::where([])
                ->limit(1000)
                ->orderBy('id', 'desc')
                ->get();
        } else {
            $gardens = Garden::where(['user_id' => $u->id])
                ->limit(1000)
                ->orderBy('id', 'desc')
                ->get();
        }

        return $this->success(
            $gardens,
            $message = "Sussesfully",
            200
        );
    }



    public function people(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            return $this->error('User not found.');
        }

        return $this->success(
            Person::where(['administrator_id' => $u->id])
                ->limit(100)
                ->orderBy('id', 'desc')
                ->get(),
            $message = "Sussesfully",
            200
        );
    }
    public function jobs(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            return $this->error('User not found.');
        }

        return $this->success(
            Job::where([])
                ->orderBy('id', 'desc')
                ->limit(100)
                ->get(),
            $message = "Sussesfully",
        );
    }

    public function garden_create(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            return $this->error('User not found.');
        }
        if (
            $r->name == null ||
            $r->planting_date == null ||
            $r->crop_id == null
        ) {
            return $this->error('Some Information is still missing. Fill the missing information and try again.');
        }


        $image = "";
        if (!empty($_FILES)) {
            try {
                $image = Utils::upload_images_2($_FILES, true);
            } catch (Throwable $t) {
                $image = "no_image.jpg";
            }
        }

        $obj = new Garden();
        $obj->name = $r->name;
        $obj->user_id = $u->id;
        $obj->status = $r->status;
        $obj->production_scale = $r->production_scale;
        $obj->planting_date = Carbon::parse($r->planting_date);
        $obj->land_occupied = $r->planting_date;
        $obj->crop_id = $r->crop_id;
        $obj->details = $r->details;
        $obj->photo = $image;
        $obj->save();


        return $this->success(null, $message = "Sussesfully created!", 200);
    }

    public function images_delete(Request $r)
    {
        $pro = Image::find($r->id);
        if ($pro == null) {
            return $this->error('Image not found.');
        }
        try {
            $pro->delete();
            return $this->success(null, $message = "Sussesfully deleted!", 200);
        } catch (\Throwable $th) {
            return $this->error('Failed to delete image because ' . $th->getMessage());
        }
    }
    public function products_delete(Request $r)
    {
        $pro = Product::find($r->id);
        if ($pro == null) {
            return $this->error('Product not found.');
        }
        try {
            $pro->delete();
            return $this->success(null, $message = "Sussesfully deleted!", 200);
        } catch (\Throwable $th) {
            return $this->error('Failed to delete product.');
        }
    }
    public function person_create(Request $r)
    {
        $u = auth('api')->user();
        if ($u == null) {
            return $this->error('User not found.');
        }
        if (
            $r->name == null ||
            $r->sex == null ||
            $r->subcounty_id == null
        ) {
            return $this->error('Some Information is still missing. Fill the missing information and try again.');
        }

        $image = "";
        if (!empty($_FILES)) {
            try {
                $image = Utils::upload_images_2($_FILES, true);
            } catch (Throwable $t) {
                $image = "no_image.jpg";
            }
        }

        $obj = new Person();
        $obj->id = $r->id;
        $obj->created_at = $r->created_at;
        $obj->association_id = $r->association_id;
        $obj->administrator_id = $u->id;
        $obj->group_id = $r->group_id;
        $obj->name = $r->name;
        $obj->address = $r->address;
        $obj->parish = $r->parish;
        $obj->village = $r->village;
        $obj->phone_number = $r->phone_number;
        $obj->email = $r->email;
        $obj->district_id = $r->district_id;
        $obj->subcounty_id = $r->subcounty_id;
        $obj->disability_id = $r->disability_id;
        $obj->phone_number_2 = $r->phone_number_2;
        $obj->dob = $r->dob;
        $obj->sex = $r->sex;
        $obj->education_level = $r->education_level;
        $obj->employment_status = $r->employment_status;
        $obj->has_caregiver = $r->has_caregiver;
        $obj->caregiver_name = $r->caregiver_name;
        $obj->caregiver_sex = $r->caregiver_sex;
        $obj->caregiver_phone_number = $r->caregiver_phone_number;
        $obj->caregiver_age = $r->caregiver_age;
        $obj->caregiver_relationship = $r->caregiver_relationship;
        $obj->photo = $image;
        $obj->save();


        return $this->success(null, $message = "Sussesfully registered!", 200);
    }

    public function groups()
    {
        return $this->success(Group::get_groups(), 'Success');
    }


    public function associations()
    {
        return $this->success(Association::where([])->orderby('id', 'desc')->get(), 'Success');
    }

    public function institutions()
    {
        return $this->success(Institution::where([])->orderby('id', 'desc')->get(), 'Success');
    }
    public function service_providers()
    {
        return $this->success(ServiceProvider::where([])->orderby('id', 'desc')->get(), 'Success');
    }
    public function counselling_centres()
    {
        return $this->success(CounsellingCentre::where([])->orderby('id', 'desc')->get(), 'Success');
    }


    public function products_1(Request $request)
    {
        //latest 1000 products without pagination
        $products = Product::where([])->limit(1000)->get();
        return $this->success($products, 'Success');
    }
    public function products(Request $request)
    {
        // Start building the query on active products
        $query = Product::with(['specifications']);

        $searchTerm = null;
        $productIds = [];

        // Filter by search keyword (in the name, description, or tags)
        if ($request->filled('search')) {
            $searchTerm = $request->input('search');
            
            // Use enhanced search with tag prioritization
            $query->enhancedSearch($searchTerm);
        }
        if ($request->filled('name')) {
            $name = $request->input('name');
            $query->where(function ($q) use ($name) {
                $q->where('name', 'LIKE', "%{$name}%")
                    ->orWhere('description', 'LIKE', "%{$name}%")
                    ->orWhere('tags', 'LIKE', "%{$name}%");
            });
        }

        // Filter by tags
        if ($request->filled('tags')) {
            $tags = $request->input('tags');
            if (is_string($tags)) {
                $tags = explode(',', $tags);
            }
            if (is_array($tags)) {
                $query->where(function($q) use ($tags) {
                    foreach ($tags as $tag) {
                        $q->orWhere('tags', 'LIKE', '%' . trim($tag) . '%');
                    }
                });
            }
        }

        // Filter by specifications
        if ($request->filled('attributes')) {
            $attributes = $request->input('attributes');
            if (is_string($attributes)) {
                $attributes = json_decode($attributes, true);
            }
            if (is_array($attributes)) {
                foreach ($attributes as $attrName => $attrValue) {
                    $query->whereHas('specifications', function($q) use ($attrName, $attrValue) {
                        $q->where('name', $attrName)->where('value', 'LIKE', "%{$attrValue}%");
                    });
                }
            }
        }

        // Filter by category
        if ($request->filled('category')) {
            $query->where('category', $request->input('category'));
        }

        // Filter by price range
        if ($request->filled('min_price')) {
            $query->where('price_1', '>=', $request->input('min_price'));
        }
        if ($request->filled('max_price')) {
            $query->where('price_2', '<=', $request->input('max_price'));
        }

        // Filter by availability
        if ($request->filled('availability')) {
            $query->where('in_stock', $request->input('availability'));
        }

        // Filter by home sections (Flash Sales, Super Buyer, Top Products)
        if ($request->filled('home_section_1')) {
            $query->where('home_section_1', $request->input('home_section_1'));
        }
        if ($request->filled('home_section_2')) {
            $query->where('home_section_2', $request->input('home_section_2'));
        }
        if ($request->filled('home_section_3')) {
            $query->where('home_section_3', $request->input('home_section_3'));
        }

        // Sorting logic based on 'sort' parameter
        if ($request->filled('sort')) {
            $sort = $request->input('sort');
            if ($sort === "Newest") {
                $query->orderBy('created_at', 'DESC');
            } elseif ($sort === "Oldest") {
                $query->orderBy('created_at', 'ASC');
            } elseif ($sort === "High Price") {
                $query->orderBy('price_2', 'DESC');
            } elseif ($sort === "Low Price") {
                $query->orderBy('price_1', 'ASC');
            } else {
                // Fallback ordering
                $query->orderBy('id', 'DESC');
            }
        } else {
            // Default ordering
            $query->orderBy('id', 'DESC');
        }

        // Paginate results (default 16 per page)
        $perPage = $request->input('per_page', 28);
        $products = $query->paginate($perPage);

        // Add computed attributes for each product
        $products->through(function ($product) {
            $product->tags_array = $product->tags_array;
            $product->attributes_array = $product->specifications->map(function ($attr) {
                return [
                    'name' => $attr->name,
                    'value' => $attr->value,
                ];
            })->toArray();
            return $product;
        });

        // Record search history if there was a search term
        if ($searchTerm && !empty(trim($searchTerm))) {
            $productIds = $products->items();
            $productIds = collect($productIds)->pluck('id')->toArray();
            $resultsCount = $products->total();
            
            // Get user ID if authenticated
            $userId = null;
            $user = auth('api')->user();
            if (!$user && $request->filled('user')) {
                $userId = $request->input('user');
            } elseif ($user) {
                $userId = $user->id;
            }
            
            // Get session ID for guest users
            $sessionId = $request->input('session_id', $request->header('X-Session-ID', session()->getId()));
            
            // Record the search
            SearchHistory::recordSearch($searchTerm, $productIds, $resultsCount, $userId, $sessionId);
        }

        return $this->success($products, 'Success');
    }

    /**
     * Live search endpoint for real-time product search with suggestions
     */
    public function live_search(Request $request)
    {
        $searchTerm = $request->input('q', '');
        $limit = $request->input('limit', 10);
        
        if (empty(trim($searchTerm)) || strlen(trim($searchTerm)) < 2) {
            return $this->success([
                'products' => [],
                'suggestions' => [],
                'total' => 0
            ], 'Search term too short');
        }

        // Search products with enhanced tag search
        $products = Product::where(function ($query) use ($searchTerm) {
                // Primary search with tag prioritization
                $query->where('name', 'LIKE', "%{$searchTerm}%")
                      ->orWhere('tags', 'LIKE', "%{$searchTerm}%")
                      ->orWhere('description', 'LIKE', "%{$searchTerm}%");

                // Additional search for individual words in tags
                $searchWords = explode(' ', trim($searchTerm));
                if (count($searchWords) > 1) {
                    foreach ($searchWords as $word) {
                        if (strlen(trim($word)) > 2) {
                            $query->orWhere('tags', 'LIKE', "%{$word}%");
                        }
                    }
                }
            })
            ->limit($limit)
            ->get(['id', 'name', 'price_1', 'price_2', 'feature_photo', 'category', 'tags']);

        // Get search suggestions based on product names and tags
        $nameSuggestions = Product::where('name', 'LIKE', "%{$searchTerm}%")
            ->distinct()
            ->limit(3)
            ->pluck('name')
            ->map(function ($name) use ($searchTerm) {
                // Extract relevant keywords from product names
                $words = explode(' ', strtolower($name));
                return array_filter($words, function ($word) use ($searchTerm) {
                    return strlen($word) > 2 && stripos($word, strtolower($searchTerm)) !== false;
                });
            })
            ->flatten()
            ->unique()
            ->take(3);

        // Get tag-based suggestions
        $tagSuggestions = Product::where('tags', 'LIKE', "%{$searchTerm}%")
            ->whereNotNull('tags')
            ->where('tags', '!=', '')
            ->limit(5)
            ->get(['tags'])
            ->flatMap(function ($product) use ($searchTerm) {
                $tags = array_map('trim', explode(',', $product->tags));
                return array_filter($tags, function ($tag) use ($searchTerm) {
                    return stripos($tag, $searchTerm) !== false && strlen($tag) > 2;
                });
            })
            ->unique()
            ->take(4);

        // Combine suggestions
        $suggestions = $nameSuggestions->concat($tagSuggestions)
            ->unique()
            ->take(5)
            ->values();

        // Record the search for search history
        $userId = null;
        $user = auth('api')->user();
        
        if (!$user && $request->filled('user')) {
            $userId = $request->input('user');
        } elseif ($user) {
            $userId = $user->id;
        }
        
        $sessionId = $request->input('session_id', $request->header('X-Session-ID', session()->getId()));
        $productIds = $products->pluck('id')->toArray();
        $resultsCount = $products->count();
        
        // Record the search
        SearchHistory::recordSearch($searchTerm, $productIds, $resultsCount, $userId, $sessionId);

        return $this->success([
            'products' => $products,
            'suggestions' => $suggestions,
            'total' => $products->count(),
            'search_term' => $searchTerm
        ], 'Live search results');
    }

    /**
     * Get user's recent search history
     */
    public function search_history(Request $request)
    {
        $userId = null;
        $user = auth('api')->user();
        
        if (!$user && $request->filled('user')) {
            $userId = $request->input('user');
        } elseif ($user) {
            $userId = $user->id;
        }
        
        // Get session ID for guest users
        $sessionId = $request->input('session_id', $request->header('X-Session-ID', session()->getId()));
        
        $limit = $request->input('limit', 10);
        
        $recentSearches = SearchHistory::getRecentSearches($userId, $sessionId, $limit);
        
        return $this->success([
            'recent_searches' => $recentSearches,
            'total' => count($recentSearches)
        ], 'Search history retrieved');
    }

    /**
     * Clear user's search history
     */
    public function clear_search_history(Request $request)
    {
        $userId = null;
        $user = auth('api')->user();
        
        if (!$user && $request->filled('user')) {
            $userId = $request->input('user');
        } elseif ($user) {
            $userId = $user->id;
        }
        
        // Get session ID for guest users
        $sessionId = $request->input('session_id', $request->header('X-Session-ID', session()->getId()));
        
        if ($userId) {
            SearchHistory::where('user_id', $userId)->delete();
        } elseif ($sessionId) {
            SearchHistory::where('session_id', $sessionId)->delete();
        }
        
        return $this->success([], 'Search history cleared');
    }

    public function index(Request $r, $model)
    {

        $className = "App\Models\\" . $model;
        $obj = new $className;

        if (isset($_POST['_method'])) {
            unset($_POST['_method']);
        }
        if (isset($_GET['_method'])) {
            unset($_GET['_method']);
        }

        $conditions = [];
        foreach ($_GET as $k => $v) {
            if (substr($k, 0, 2) == 'q_') {
                $conditions[substr($k, 2, strlen($k))] = trim($v);
            }
        }
        $is_private = true;
        if (isset($_GET['is_not_private'])) {
            $is_not_private = ((int)($_GET['is_not_private']));
            if ($is_not_private == 1) {
                $is_private = false;
            }
        }
        if ($is_private) {

            $u = auth('api')->user();
            $administrator_id = $u->id;

            if ($u == null) {
                return $this->error('User not found.');
            }
            $conditions['administrator_id'] = $administrator_id;
        }

        $items = [];
        $msg = "";

        try {
            $items = $className::where($conditions)->get();
            $msg = "Success";
            $success = true;
        } catch (Exception $e) {
            $success = false;
            $msg = $e->getMessage();
        }

        if ($success) {
            return $this->success($items, 'Success');
        } else {
            return $this->error($msg);
        }
    }





    public function delete(Request $r, $model)
    {
        $administrator_id = Utils::get_user_id($r);
        $u = Administrator::find($administrator_id);

        if ($u == null) {
            return Utils::response([
                'status' => 0,
                'message' => "User not found.",
            ]);
        }


        $className = "App\Models\\" . $model;
        $id = ((int)($r->online_id));
        $obj = $className::find($id);


        if ($obj == null) {
            return Utils::response([
                'status' => 0,
                'message' => "Item already deleted.",
            ]);
        }


        try {
            $obj->delete();
            $msg = "Deleted successfully.";
            $success = true;
        } catch (Exception $e) {
            $success = false;
            $msg = $e->getMessage();
        }


        if ($success) {
            return Utils::response([
                'status' => 1,
                'data' => $obj,
                'message' => $msg
            ]);
        } else {
            return Utils::response([
                'status' => 0,
                'data' => null,
                'message' => $msg
            ]);
        }
    }


    public function update(Request $r, $model)
    {
        $administrator_id = Utils::get_user_id($r);
        $u = Administrator::find($administrator_id);


        if ($u == null) {
            return Utils::response([
                'status' => 0,
                'message' => "User not found.",
            ]);
        }


        $className = "App\Models\\" . $model;
        $id = ((int)($r->online_id));
        $obj = $className::find($id);


        if ($obj == null) {
            return Utils::response([
                'status' => 0,
                'message' => "Item not found.",
            ]);
        }


        unset($_POST['_method']);
        if (isset($_POST['online_id'])) {
            unset($_POST['online_id']);
        }

        foreach ($_POST as $key => $value) {
            $obj->$key = $value;
        }


        $success = false;
        $msg = "";
        try {
            $obj->save();
            $msg = "Updated successfully.";
            $success = true;
        } catch (Exception $e) {
            $success = false;
            $msg = $e->getMessage();
        }


        if ($success) {
            return Utils::response([
                'status' => 1,
                'data' => $obj,
                'message' => $msg
            ]);
        } else {
            return Utils::response([
                'status' => 0,
                'data' => null,
                'message' => $msg
            ]);
        }
    }

    //delivery_addresses
    public function delivery_addresses(Request $r)
    {
        return $this->success(
            DeliveryAddress::where([])
                ->limit(100)
                ->orderBy('id', 'desc')
                ->get(),
            $message = "Sussesfully",
            200
        );
    }

    // ===== WISHLIST METHODS =====

    /**
     * Get user's wishlist
     */
    public function wishlist_get(Request $request)
    {
        try {
            $user_id = $request->user;
            
            if (!$user_id) {
                return $this->error('User authentication required.', 401);
            }

            $wishlists = \App\Models\Wishlist::where('user_id', $user_id)
                ->orderBy('created_at', 'desc')
                ->get();

            return $this->success($wishlists, 'Wishlist retrieved successfully.', 200);

        } catch (\Exception $e) {
            return $this->error('Failed to retrieve wishlist: ' . $e->getMessage(), 500);
        }
    }

    /**
     * Add product to wishlist
     */
    public function wishlist_add(Request $request)
    {
        try {
            $user_id = $request->user;
            $product_id = $request->product_id;

            if (!$user_id) {
                return $this->error('User authentication required.', 401);
            }

            if (!$product_id) {
                return $this->error('Product ID is required.', 400);
            }

            // Check if product exists
            $product = Product::find($product_id);
            if (!$product) {
                return $this->error('Product not found.', 404);
            }

            // Check if already in wishlist
            $existing = \App\Models\Wishlist::where([
                'user_id' => $user_id,
                'product_id' => $product_id
            ])->first();

            if ($existing) {
                return $this->error('Product already in wishlist.', 409);
            }

            // Add to wishlist
            $wishlist = \App\Models\Wishlist::create([
                'user_id' => $user_id,
                'product_id' => $product_id,
                'product_name' => $product->name,
                'product_price' => $product->price_1,
                'product_sale_price' => $product->price_2,
                'product_photo' => $product->feature_photo,
            ]);

            return $this->success($wishlist, 'Product added to wishlist successfully.', 201);

        } catch (\Exception $e) {
            return $this->error('Failed to add to wishlist: ' . $e->getMessage(), 500);
        }
    }

    /**
     * Remove product from wishlist
     */
    public function wishlist_remove(Request $request)
    {
        try {
            $user_id = $request->user;
            $product_id = $request->product_id;

            if (!$user_id) {
                return $this->error('User authentication required.', 401);
            }

            if (!$product_id) {
                return $this->error('Product ID is required.', 400);
            }

            $wishlist = \App\Models\Wishlist::where([
                'user_id' => $user_id,
                'product_id' => $product_id
            ])->first();

            if (!$wishlist) {
                return $this->error('Product not found in wishlist.', 404);
            }

            $wishlist->delete();

            return $this->success(null, 'Product removed from wishlist successfully.', 200);

        } catch (\Exception $e) {
            return $this->error('Failed to remove from wishlist: ' . $e->getMessage(), 500);
        }
    }

    /**
     * Check if product is in user's wishlist
     */
    public function wishlist_check(Request $request)
    {
        try {
            $user_id = $request->user;
            $product_id = $request->product_id;

            if (!$user_id) {
                return $this->error('User authentication required.', 401);
            }

            if (!$product_id) {
                return $this->error('Product ID is required.', 400);
            }

            $exists = \App\Models\Wishlist::where([
                'user_id' => $user_id,
                'product_id' => $product_id
            ])->exists();

            return $this->success(['in_wishlist' => $exists], 'Wishlist status checked.', 200);

        } catch (\Exception $e) {
            return $this->error('Failed to check wishlist status: ' . $e->getMessage(), 500);
        }
    }

    /**
     * Get application manifest with essential data and counts
     * This endpoint provides centralized data to avoid multiple API calls
     * Returns different data based on user authentication status
     */
    public function manifest(Request $request)
    {
        try {
            $user_id = $request->user;
            $user = null;
            
            // Check if user is authenticated
            if ($user_id) {
                $user = Administrator::find($user_id);
            }

            // Base manifest data for all users (authenticated and guests)
            $manifest = [
                'app_info' => [
                    'name' => 'BlitXpress',
                    'version' => '1.0.0',
                    'api_version' => '1.0',
                    'maintenance_mode' => false,
                ],
                'categories' => $this->getProductCategories(),
                'delivery_locations' => $this->getDeliveryLocations(),
                'settings' => [
                    'currency' => 'UGX',
                    'currency_symbol' => 'UGX',
                    'tax_rate' => 0, // No tax for delivery-only
                    'delivery_fee_varies' => true,
                    'min_order_amount' => 0,
                ],
                'features' => [
                    'wishlist_enabled' => true,
                    'reviews_enabled' => true,
                    'chat_enabled' => true,
                    'promotions_enabled' => true,
                ],
                'counts' => [
                    'total_products' => Product::count(),
                    'total_categories' => ProductCategory::count(),
                    'total_orders' => Order::count(),
                    'total_users' => Administrator::where('user_type', 'customer')->count(),
                    'total_vendors' => Administrator::where('user_type', 'Vendor')->count(),
                    'active_vendors' => Administrator::where('user_type', 'Vendor')->count(),
                    'total_delivery_locations' => DeliveryAddress::count(),
                    'active_promotions' => 0, // You can add this if you have promotions table
                    'wishlist_count' => 0,
                    'cart_count' => 0,
                    'notifications_count' => 0,
                    'unread_messages_count' => 0,
                    'pending_orders' => Order::where('order_state', 0)->count(),
                    'completed_orders' => Order::where('order_state', 2)->count(),
                    'cancelled_orders' => Order::where('order_state', 3)->count(),
                    'processing_orders' => Order::where('order_state', 1)->count(),
                    'recent_orders_this_week' => Order::where('created_at', '>=', now()->subWeek())->count(),
                    'orders_today' => Order::whereDate('created_at', today())->count(),
                    'orders_this_month' => Order::whereMonth('created_at', now()->month)->count(),
                    'new_users_this_week' => Administrator::where('created_at', '>=', now()->subWeek())->count(),
                    'new_users_today' => Administrator::whereDate('created_at', today())->count(),
                    'products_out_of_stock' => Product::where('in_stock', '<=', 0)->count(),
                    'low_stock_products' => Product::where('in_stock', '>', 0)->where('in_stock', '<=', 10)->count(),
                    'featured_products_count' => Product::where('rates', '>', 4)->count(),
                    'total_revenue' => Order::where('order_state', 2)->sum('order_total'),
                    'revenue_this_month' => Order::where('order_state', 2)
                        ->whereMonth('created_at', now()->month)
                        ->sum('order_total'),
                    'average_order_value' => Order::where('order_state', 2)->avg('order_total') ?: 0,
                ],
                'user' => null,
                'is_authenticated' => false,
            ];

            // If user is authenticated, add user-specific data
            if ($user) {
                $manifest['is_authenticated'] = true;
                $manifest['user'] = [
                    'id' => $user->id,
                    'name' => $user->first_name . ' ' . $user->last_name,
                    'email' => $user->email,
                    'phone' => $user->phone_number,
                    'avatar' => $user->avatar,
                    'user_type' => $user->user_type,
                    'status' => $user->status,
                    'complete_profile' => $user->complete_profile,
                ];

                // User-specific counts
                $manifest['counts']['total_orders'] = Order::where('user', $user->id)->count();
                $manifest['counts']['wishlist_count'] = \App\Models\Wishlist::where('user_id', $user->id)->count();
                
                // Include full wishlist data to avoid separate API call
                $manifest['wishlist'] = \App\Models\Wishlist::where('user_id', $user->id)
                    ->orderBy('created_at', 'desc')
                    ->get();
                
                // Unread messages count
                $manifest['counts']['unread_messages_count'] = ChatMessage::where('receiver_id', $user->id)
                    ->where('status', '!=', 'read')->count();

                // Recent orders (last 5)
                $manifest['recent_orders'] = Order::where('user', $user->id)
                    ->orderBy('created_at', 'desc')
                    ->limit(5)
                    ->get(['id', 'order_total', 'order_state', 'created_at']);
            } else {
                // For guest users, provide empty arrays
                $manifest['wishlist'] = [];
                $manifest['recent_orders'] = [];
            }

            // Get recent search suggestions for the user (authenticated or guest)
            $userId = $user ? $user->id : null;
            $sessionId = $request->input('session_id', $request->header('X-Session-ID', session()->getId()));
            $manifest['recent_search_suggestions'] = SearchHistory::getRecentSearches($userId, $sessionId, 10);

            // Popular/featured products for quick access
            $manifest['featured_products'] = Product::where('rates', '>', 4)
                ->orderBy('rates', 'desc')
                ->limit(8)
                ->get(['id', 'name', 'price_1', 'price_2', 'feature_photo', 'category']);

            // Recent products
            $manifest['recent_products'] = Product::orderBy('created_at', 'desc')
                ->limit(8)
                ->get(['id', 'name', 'price_1', 'price_2', 'feature_photo', 'category']);

            return $this->success($manifest, 'Manifest loaded successfully.', 200);

        } catch (\Exception $e) {
            return $this->error('Failed to load manifest: ' . $e->getMessage(), 500);
        }
    }

    /**
     * Helper method to get product categories for manifest
     */
    private function getProductCategories()
    {
        return ProductCategory::with('specifications')
            ->orderBy('id', 'desc')
            ->get()
            ->map(function ($category) {
                return [
                    'id' => $category->id,
                    'category' => $category->category,
                    'name' => $category->category, // Use name as name
                    'category_text' => $category->display_count, // Use display count instead of category name
                    'product_count' => $category->product_count, // Actual product count
                    'display_count' => $category->display_count, // Display count with +10
                    'parent_id' => $category->parent_id,
                    'image' => $category->image,
                    'banner_image' => $category->banner_image,
                    'show_in_banner' => $category->show_in_banner ?? 'No',
                    'show_in_categories' => $category->show_in_categories ?? 'Yes',
                    'is_parent' => $category->is_parent ?? 'No',
                    'icon' => $category->icon,
                    'specifications' => $category->specifications ? $category->specifications->map(function ($specification) {
                        return [
                            'id' => $specification->id,
                            'name' => $specification->name,
                            'is_required' => $specification->is_required,
                        ];
                    }) : [],
                ];
            });
    }

    /**
     * Helper method to get delivery locations for manifest
     */
    private function getDeliveryLocations()
    {
        return DeliveryAddress::orderBy('address', 'asc')
            ->get(['id', 'address', 'shipping_cost', ])
            ->map(function ($location) {
                return [
                    'id' => $location->id,
                    'name' => $location->address,
                    'shipping_cost' => $location->shipping_cost, 
                ];
            });
    }

    /**
     * Get all product categories
     */
    public function categories(Request $request)
    {
        try {
            $categories = ProductCategory::all()->map(function ($category) {
                return [
                    'id' => $category->id,
                    'category' => $category->category,
                    'details' => $category->details ?? '',
                    'parent_id' => $category->parent_id ?? null,
                ];
            });

            return $this->success($categories, 'Categories retrieved successfully');
        } catch (\Exception $e) {
            return $this->error('Failed to retrieve categories: ' . $e->getMessage());
        }
    }

    /**
     * Get popular tags from products
     */
    public function popular_tags(Request $request)
    {
        $limit = $request->input('limit', 20);
        
        // Get all products with tags
        $products = Product::whereNotNull('tags')
            ->where('tags', '!=', '')
            ->get(['tags']);
            
        // Extract and count all tags
        $tagCounts = [];
        foreach ($products as $product) {
            $tags = array_map('trim', explode(',', $product->tags));
            foreach ($tags as $tag) {
                if (!empty($tag)) {
                    $tag = strtolower($tag);
                    $tagCounts[$tag] = ($tagCounts[$tag] ?? 0) + 1;
                }
            }
        }
        
        // Sort by popularity and return top tags
        arsort($tagCounts);
        $popularTags = array_slice(array_keys($tagCounts), 0, $limit);
        
        return $this->success([
            'tags' => $popularTags,
            'total_tags' => count($tagCounts),
            'total_products_with_tags' => $products->count()
        ], 'Popular tags retrieved successfully');
    }

    /**
     * Search products by specific tags only
     */
    public function search_by_tags(Request $request)
    {
        $tags = $request->input('tags', '');
        $perPage = $request->input('per_page', 16);
        
        if (empty($tags)) {
            return $this->error('Tags parameter is required');
        }
        
        // Convert tags to array
        if (is_string($tags)) {
            $tags = array_map('trim', explode(',', $tags));
        }
        
        // Search products with any of the specified tags
        $query = Product::with(['specifications']);
        
        $query->where(function($q) use ($tags) {
            foreach ($tags as $tag) {
                if (!empty(trim($tag))) {
                    $q->orWhere('tags', 'LIKE', '%' . trim($tag) . '%');
                               }
            }
        });
        
        // Order by relevance (products with more matching tags first)
        $query->orderByRaw("
            CASE 
                WHEN tags LIKE '%" . implode("%' AND tags LIKE '%", $tags) . "%' THEN 1
                ELSE 2
            END
        ");
        
        $products = $query->paginate($perPage);
        
        // Add computed attributes for each product
        $products->through(function ($product) {
            $product->tags_array = $product->tags_array;
            $product->attributes_array = $product->specifications->map(function ($attr) {
                return [
                    'name' => $attr->name,
                    'value' => $attr->value,
                ];
            })->toArray();
            return $product;
        });
        
        return $this->success($products, 'Search by tags completed successfully');
    }

    /**
     * Get tag suggestions based on partial input
     */
    public function tag_suggestions(Request $request)
    {
        $partial = $request->input('q', '');
        $limit = $request->input('limit', 10);
        
        if (strlen($partial) < 2) {
            return $this->success([], 'Query too short');
        }
        
        // Get products with tags containing the partial string
        $products = Product::whereNotNull('tags')
            ->where('tags', '!=', '')
            ->where('tags', 'LIKE', "%{$partial}%")
            ->get(['tags']);
        
        // Extract matching tags
        $suggestions = collect();
        foreach ($products as $product) {
            $tags = array_map('trim', explode(',', $product->tags));
            foreach ($tags as $tag) {
                if (stripos($tag, $partial) !== false && strlen($tag) > 1) {
                    $suggestions->push(strtolower($tag));
                }
            }
        }
        
        // Remove duplicates and limit results
        $suggestions = $suggestions->unique()->take($limit)->values();
        
        return $this->success([
            'suggestions' => $suggestions,
            'query' => $partial
        ], 'Tag suggestions retrieved');
    }
}
