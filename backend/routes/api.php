<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware(['auth:sanctum'])->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('/register', RegisterController::class);
Route::apiResource('/winners', WinnerController::class, ['only' => ['index', 'store']]);
Route::apiResource('/departments', DepartmentController::class, ['only' => ['index', 'store']]);
Route::apiResource('/cities', CityController::class, ['only' => ['index', 'store']]);
Route::apiResource('/clients', ClientController::class, ['only' => ['index']]);
