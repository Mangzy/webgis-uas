<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('pages.dashboard');
});
Route::get('/dashboard', function () {
    return view('pages.dashboard');
});

Route::get('/peta-provinsi', function () {
    return view('pages.map-province');
});

Route::get('/peta-persebaran', function () {
    return view('pages.map-spread');
});
