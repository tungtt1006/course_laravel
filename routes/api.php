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
Route::post('login', 'Client\AuthController@login');

Route::get('products', 'Client\ProductController@index');
Route::get('products/{product}', 'Client\ProductController@show');
Route::get('categories/{category}/products', 'Client\CategoryProductController@index');

Route::get('categories', 'Client\CategoryController@index');

Route::get('classes/learning', 'Client\ClassController@getLearningClass');

Route::get('banners', 'Client\BannerController@index');

Route::middleware('auth:api')->group(function () {
    Route::get('auth/health', function () {
        return response()->json(['status' => 200]);
    });

    Route::get('logout', 'Client\AuthController@logout');

    Route::post('orders', 'Client\OrderController@store');

    Route::resource('classes.periods', 'Client\ClassPeriodController')->only(['index'])->names([
        'index' => 'client.classes.periods.index',
    ]);
});
