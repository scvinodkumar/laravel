<?php

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
Route::get('users','pagination@users');
Route::resource('todo','todocontroller');

Route::get('about','testController@about')->middleware('test:Vinodkumar');

Route::post('send','mailController@send');
Route::get('email','mailController@email');

//Route::get('about','testController@about');
Route::get('contact','testController@contact');
/*
Route::get('about', function() {
	return view('about');
})->middleware('test');

Route::get('contact', function() {
	return view('contact');
})->middleware('test');
*/

Route::get('/','pageController@welcome');
//Route::get('about','pageController@about');
Route::resource('songs','SongsController');
/*
Route::get('/', function () {
	$name = 'Vinodkumar';
    return view('welcome', compact('name'));
});
Route::get('about', function () {
	$array_data = ['vinod','Kumar','SC'];
	//$array_data = [];
	//return view('about',['array_data' => $array_data]);
	//return view('about')->with($array_data);
	//return view('about')->withBitFumes($array_data);
	return view('about', compact('array_data'));
});
*/