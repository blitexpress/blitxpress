<?php

use App\Http\Controllers\ApiAuthController;
use App\Http\Controllers\ApiResurceController;
use App\Http\Middleware\EnsureTokenIsValid;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post("account-verification", [ApiResurceController::class, 'account_verification']);
Route::post("password-change", [ApiResurceController::class, 'password_change']);
Route::post("update-profile", [ApiResurceController::class, 'update_profile'])->middleware(EnsureTokenIsValid::class);
Route::post("delete-account", [ApiResurceController::class, 'delete_profile']);
Route::post("become-vendor", [ApiResurceController::class, 'become_vendor']);
Route::post("post-media-upload", [ApiResurceController::class, 'upload_media']);
Route::post("cancel-order", [ApiResurceController::class, "orders_cancel"]);
Route::post("orders", [ApiResurceController::class, "orders_submit"]);
Route::post("orders-create", [ApiResurceController::class, "orders_create"]);
Route::post("product-create", [ApiResurceController::class, "product_create"]);
Route::get("orders", [ApiResurceController::class, "orders_get"]);
Route::get("orders/{id}", [ApiResurceController::class, "orders_get_by_id"]);
Route::get("products/{id}", [ApiResurceController::class, "product_get_by_id"]);
Route::get("order", [ApiResurceController::class, "order"]);
Route::get("vendors", [ApiResurceController::class, "vendors"]);
Route::get("delivery-addresses", [ApiResurceController::class, "delivery_addresses"]);
Route::get("locations", [ApiResurceController::class, "locations"]);
Route::get("categories", [ApiResurceController::class, "categories"]);
Route::get('products', [ApiResurceController::class, 'products']);
Route::get('products-1', [ApiResurceController::class, 'products_1']);
Route::post('products-delete', [ApiResurceController::class, 'products_delete']);
Route::post('images-delete', [ApiResurceController::class, 'images_delete']);
Route::post('chat-start', [ApiResurceController::class, 'chat_start']);
Route::post('chat-send', [ApiResurceController::class, 'chat_send']);
Route::post('chat-mark-as-read', [ApiResurceController::class, 'chat_mark_as_read']);
Route::get('chat-heads', [ApiResurceController::class, 'chat_heads']);
Route::get('chat-messages', [ApiResurceController::class, 'chat_messages']);
Route::get("users/me", [ApiResurceController::class, "my_profile"])->middleware(EnsureTokenIsValid::class);
Route::get("manifest", [ApiResurceController::class, "manifest"]);
Route::get("live-search", [ApiResurceController::class, "live_search"]);
Route::get("search-history", [ApiResurceController::class, "search_history"]);
Route::post("search-history/clear", [ApiResurceController::class, "clear_search_history"]);
Route::POST("users/login", [ApiAuthController::class, "login"]);
Route::POST("users/register", [ApiAuthController::class, "register"]);

// Wishlist routes
Route::get('wishlist_get', [ApiResurceController::class, 'wishlist_get']);
Route::post('wishlist_add', [ApiResurceController::class, 'wishlist_add']);
Route::post('wishlist_remove', [ApiResurceController::class, 'wishlist_remove']);
Route::post('wishlist_check', [ApiResurceController::class, 'wishlist_check']);

// Review routes
use App\Http\Controllers\Api\ReviewController;
Route::prefix('reviews')->group(function () {
    Route::get('/', [ReviewController::class, 'index']); // Get reviews for a product
    Route::get('/stats', [ReviewController::class, 'stats']); // Get review statistics
    Route::middleware('auth:sanctum')->group(function () {
        Route::post('/', [ReviewController::class, 'store']); // Create review
        Route::get('/user-review', [ReviewController::class, 'userReview']); // Get user's review
        Route::get('/{review}', [ReviewController::class, 'show']); // Get specific review
        Route::put('/{review}', [ReviewController::class, 'update']); // Update review
        Route::delete('/{review}', [ReviewController::class, 'destroy']); // Delete review
    });
});

Route::get('api/{model}', [ApiResurceController::class, 'index']);

// Route::get('manifest', [ApiAuthController::class, 'manifest']); // Commented out - using ApiResurceController instead


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('ajax', function (Request $r) {

    $_model = trim($r->get('model'));
    $conditions = [];
    foreach ($_GET as $key => $v) {
        if (substr($key, 0, 6) != 'query_') {
            continue;
        }
        $_key = str_replace('query_', "", $key);
        $conditions[$_key] = $v;
    }

    if (strlen($_model) < 2) {
        return [
            'data' => []
        ];
    }

    $model = "App\Models\\" . $_model;
    $search_by_1 = trim($r->get('search_by_1'));
    $search_by_2 = trim($r->get('search_by_2'));

    $q = trim($r->get('q'));

    $res_1 = $model::where(
        $search_by_1,
        'like',
        "%$q%"
    )
        ->where($conditions)
        ->limit(20)->get();
    $res_2 = [];

    if ((count($res_1) < 20) && (strlen($search_by_2) > 1)) {
        $res_2 = $model::where(
            $search_by_2,
            'like',
            "%$q%"
        )
            ->where($conditions)
            ->limit(20)->get();
    }

    $data = [];
    foreach ($res_1 as $key => $v) {
        $name = "";
        if (isset($v->name)) {
            $name = " - " . $v->name;
        }
        $data[] = [
            'id' => $v->id,
            'text' => "#$v->id" . $name
        ];
    }
    foreach ($res_2 as $key => $v) {
        $name = "";
        if (isset($v->name)) {
            $name = " - " . $v->name;
        }
        $data[] = [
            'id' => $v->id,
            'text' => "#$v->id" . $name
        ];
    }

    return [
        'data' => $data
    ];
});
