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

Route::get('/', 'client\HomeController@index')->name('home.index');
Route::get('/category', 'CategoryController@getCategoryWId')->name('category.getCategoryWId');

Route::group(["prefix" => "admin"], function () {
    Route::get('/', function () {
        return view('welcome');
    })->name('home');

    Route::get('/403', function () {
        return view('backend.403');
    })->name('403');

    /**
     * Auth
     */
    Route::get('/login', 'backend\auth\AuthController@login')->name('auth.login');
    Route::post('/login', 'backend\auth\AuthController@authLogin')->name('auth.authLogin');
    Route::get('/register', 'backend\auth\AuthController@register')->name('auth.register');
    Route::post('/register', 'backend\auth\AuthController@authRegister')->name('auth.authRegister');

    /**
     * Users
     */
    Route::resource('users', 'UserController');

    /**
     * Category
     */
    Route::resource('category', 'CategoryController');
});
// Route::group(["prefix"=>"admin"], function() {
//     Route::get('/', [App\Http\Controllers\HomeController::class,'index'])->name('home');

//     // Users
    // Route::resource('users', UsersController::class)->middleware('permission.checker:admin');
//     Route::get('arrangeuser/{cate}/{type}',  [UsersController::class, 'arrangeUser'])
//         ->name('users.arrangeuser');

//     // Product
//     Route::resource('products', ProductController::class);
//     Route::get('arrangeproduct/{cate_id}/{cate}/{type}',  [ProductController::class, 'arrangeProduct'])
//         ->name('products.arrangeproduct');

//     Route::get('arrangecategory/{cate}/{type}',  [ProductController::class, 'arrangeCategory'])
//         ->name('products.arrangecategory');
//     // Category
//     Route::resource('categories', CategoryController::class);
//     Route::get('arrangecategory/{cate}/{type}',  [CategoryController::class, 'arrangeCategory'])
//         ->name('products.arrangecategory');

//     // New
//     Route::resource('news', NewsController::class);

//     // Discount
//     Route::resource('discounts', DiscountController::class);

//     // Banner
//     Route::resource('banners', BannerController::class);

//     // Order
//     Route::resource('orders', OrderController::class);
//     Route::get('/changestatus/{id}',[OrderController::class,'changeStatus']);

//     // Customer
//     Route::resource('customers', CustomerController::class);
// });
