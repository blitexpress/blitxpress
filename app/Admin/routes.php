<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('requests', VendorController::class);
    $router->resource('users', UserController::class);
    $router->resource('quotations', QuotationController::class);
    $router->resource('invoices', InvoiceController::class);
    $router->resource('invoice-items', InvoiceItemController::class);
    $router->resource('deliveries', DeliveryController::class);
    $router->resource('districts', DistrictController::class);
    $router->resource('sub-counties', SubCountyController::class);

    $router->resource('gens', GenController::class);
    $router->resource('products', ProductController::class);
    $router->resource('product-orders', ProductOrderController::class);
    $router->resource('orders', OrderController::class); 

    $router->resource('delivery-addresses', DeliveryAddressController::class);
});
