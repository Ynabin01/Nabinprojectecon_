<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EconController;
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



Route::get('/',[EconController::class,'index']);
Route::get('/inner',[EconController::class,'inner']);
Route::get('/newsevent',[EconController::class,'newsevent']);
Route::get('/newslist',[EconController::class,'newslist']);
Route::get('/gallery',[EconController::class,'gallery']);
Route::get('/memberform',[EconController::class,'memberform']);
Route::get('/memberlist',[EconController::class,'memberlist']);
Route::get('/contact',[EconController::class,'contact']);

