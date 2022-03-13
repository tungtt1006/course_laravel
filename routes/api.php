<?php

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
// Route::post('register', 'AuthController@register');
// Route::post('login', 'AuthController@login');

// Route::group([], function ($router) {
//     Route::post('login', 'AuthController@login');
//     Route::post('logout', 'AuthController@logout');
//     Route::post('refresh', 'AuthController@refresh');
//     Route::post('me', 'AuthController@me');

// });

/**
 * Products
 */
Route::get('products', 'Client\ProductController@index');
// Route::get('products', 'ProductController@index');
// Route::apiResource('products', ProductController::class);
// Route::get('products/{id}', [ProductController::class, 'getCourse']);

/**
 * Category
 */
Route::get('categories', 'Client\CategoryController@index');
// Route::get('categories/show/{id}', [CategoryController::class, 'show']);
// Route::get('categories/{id}', [CategoryController::class, 'getAcategory']);

// // Users
// Route::get('users', 'UserController@index');
// Route::get('arrangeuser/{cate}/{type}',  [UserController::class, 'arrangeUser']);

// Banners
// Route::get('banners', 'BannerController@index');

// News
// Route::get('news', 'NewController@index');
// Route::get('new/{id}', [NewController::class, 'getNew']);
// Route::get('newslist', [NewController::class, 'getNews']);

// // Customer
// Route::post('register', [CustomerController::class, 'create']);
// Route::post('login', [CustomerController::class, 'login']);
// Route::put('edit-password', [CustomerController::class, 'editPassword']);

// // Order
// Route::post('order/store', [OrderController::class, 'store']);
// Route::get('get-order/{id}', [OrderController::class, 'getOrder']);
// Route::delete('delete-order/{id}', [OrderController::class, 'destroy']);

// // Order
// Route::get('discount/{userid}/{code}', [DiscountController::class, 'getDiscoutPrice']);
