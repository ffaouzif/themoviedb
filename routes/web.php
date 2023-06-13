<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MoviesController;

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

Route::get('/', function () {
    return view('welcome');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::get('/', [MoviesController::class, 'index'])->name('movies.index');
    Route::get('/movies/trending', [MoviesController::class, 'index'])->name('movies.trending');
    Route::get('/movies/{movie}', [MoviesController::class, 'show'])->name('movies.show');
    Route::put('movies/{movie}', [MoviesController::class, 'update'])->name('movies.update');
});

