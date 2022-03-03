<?php
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Auth::routes();
// Route::get('/logout', function() {
//     // Auth::Logout();
//     return redirect(url('/login'));
// });

// Route::get('/', 'Client\HomeController@index')->name('client.home.index');

// Route::get('/category', 'Client\CategoryController@getCategoryWId')->name('client.category.getCategoryWId');

// Route::get('/product/{product}', 'Client\ProductController@getDetailProduct')->name('client.product.get_detail_product');

Route::group(["prefix" => "admin"], function () {
    Route::get('/', function () {
        return view('welcome');
    })->name('home');

    Route::get('/403', function () {
        return view('admin.403');
    })->name('403');

    // Route::get('/login', 'backend\auth\AuthController@login')->name('auth.login');
    // Route::post('/login', 'backend\auth\AuthController@authLogin')->name('auth.authLogin');
    // Route::get('/register', 'backend\auth\AuthController@register')->name('auth.register');
    // Route::post('/register', 'backend\auth\AuthController@authRegister')->name('auth.authRegister');

    Route::resource('users', 'Admin\UserController');
    Route::resource('category', 'Admin\CategoryController');
    Route::resource('categories.products', 'Admin\ProductController');
    Route::resource('classes', 'Admin\ClassController');
});
