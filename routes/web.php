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

Route::get('/lading-page', function () {
    return view('landing');
});
Route::get('/', function () {
    return redirect('/landing-page');
});

Route::get('/admin','AdminController@index');
Route::get('/tambah-baru','AdminController@create');


Route::get('/login', function () {
    return view('login');
});
Route::get('/scanner', function () {
    return view('scanner');
});

Route::get('/kendaraan/{id}','ParkirController@show');

Route::get('/cek/{id}','ParkirController@cek');

Route::get('/parkirin/{id}','ParkirController@parkirin');
Route::get('/parkirout/{id}','ParkirController@parkirout');

Route::get('/parkir/out/{id}','ParkirController@parkirkeluar');
