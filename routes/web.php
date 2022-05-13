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
Route::get('/login', 'Admin\Auth\AuthController@login')->name('auth.login');
Route::post('/login', 'Admin\Auth\AuthController@authenticate')->name('auth.authenticate');
Route::get('/register', 'Admin\Auth\AuthController@register')->name('auth.register');
Route::post('/register', 'Admin\Auth\AuthController@authRegister')->name('auth.authRegister');

Route::middleware(['auth'])->group(function () {
    Route::get('/', 'Admin\StatisticController@index')->name('statistics.index');

    Route::get('/403', function () {
        return view('admin.403');
    })->name('403');

    Route::get('/logout', function () {
        Auth::Logout();
        return redirect()->route('auth.login');
    })->name('auth.logout');

    Route::resource('users', 'Admin\UserController');

    Route::resource('category', 'Admin\CategoryController');
    Route::resource('categories.products', 'Admin\ProductController');

    Route::resource('classes', 'Admin\ClassController');
    Route::get('classes/{class}/export', 'Admin\ClassController@exportUsers')->name('classes.export_users');
    Route::resource('classes.periods', 'Admin\PeriodController');

    Route::resource('orders', 'Admin\OrderController');
    Route::get('orders/{order}/export-pdf', 'Admin\OrderController@exportPdf')->name('orders.export_pdf');
});
