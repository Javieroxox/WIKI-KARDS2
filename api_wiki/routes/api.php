<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CartasController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


/* Route::get('/cartas',[CartasController::class,'index']);
Route::get('/cartas/{carta}',[CartasController::class,'show']);
Route::post('/cartas',[CartasController::class,'store']);
Route::delete('/cartas/{carta}',[CartasController::class,'destroy']);
Route::patch('/cartas/{carta}',[CartasController::class,'update']); */

Route::apiResource('/cartas',CartasController::class);
Route::put('/cartas/{carta}',[CartasController::class,'destroylogic']);
