<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Faker\Generator as Faker;
use \App\Unit;

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

//Finds all units
Route::apiResource('/units', 'UnitController')->middleware('cors');

Route::post('/units/{unitId}', 'UnitController@store')->middleware('cors');

Route::patch('/units/{unitId}/charges/{chargeId}', 'UnitController@update')->middleware('cors');

