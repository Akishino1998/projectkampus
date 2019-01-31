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

Route::get('/index', function () {
    return view('index');
});

Route::get('/tambah data', function () {
    return view('mailbox-folder');
});
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
