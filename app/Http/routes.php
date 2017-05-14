<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

use Illuminate\Support\Facades\Input;

Route::get('/', function () {
    $collection=\App\Product::all();
    return view('index',compact('collection'));
})->name('index');

Route::auth();

Route::get('/home', 'HomeController@index');

Route::post('/newsletter/store','NewsletterController@store');

Route::get('/product/{id}','ProductsController@show')->name('product.details');

Route::get('/category/{id}','CategoriesController@show')->name('category.details');

Route::get('/subcategory/{id}','SubcategoriesController@show')->name('subcategory.details');

Route::get('/add-to-cart/{id}','ProductsController@getAddToCart')->name('product.addToCart');

Route::get('/cart','ProductsController@getCart')->name('shop.cart');

Route::get('/reduce/{id}','ProductsController@getReduceByOne')->name('cart.reduceByOne');

Route::get('/remove/{id}','ProductsController@getRemoveItem')->name('cart.remove');



Route::group(['middleware'=>'auth'],function(){


    Route::get('/checkout','ProductsController@getCheckout')->name('shop.checkout');

    Route::post('/checkout','ProductsController@postCheckout')->name('checkout');

    Route::get('/user/orders','UsersController@getPanel')->name('user.orders');
});




Route::group(['middleware'=>'admin'],function(){


    Route::get('/jquery-subcat',function(){

       $cat_id=Input::get('cat_id');

       $subcategories = \App\Subcategory::where('category_id',$cat_id)->get();

        return Response::json($subcategories);

    });


    Route::get('/admin',function(){

        return view('admin.index');

    });

    Route::resource('/admin/products','AdminProductsController');

    Route::resource('/admin/categories','AdminCategoriesController');

    Route::resource('/admin/subcategories','AdminSubcategoriesController');


});