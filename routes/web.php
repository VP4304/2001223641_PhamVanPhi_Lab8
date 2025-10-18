<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;

// Trang chủ
Route::get('/', function () {
    return view('welcome');
});

// Products CRUD
// Bài tập 08
Route::get('/products/expensive', [ProductController::class, 'expensive'])->name('products.expensive');
Route::get('/products/count-by-category', [ProductController::class, 'countByCategory'])->name('products.countByCategory');
Route::resource('products', ProductController::class);

// Students
Route::get('/students', [StudentController::class, 'index'])->name('students.index');
Route::get('/students', [StudentController::class, 'index']);

// Users
Route::get('/users', [UserController::class, 'index'])->name('users.index');
Route::get('/users/{id}/profile/create', [UserController::class, 'createProfile'])->name('users.createProfile');
Route::post('/users/{id}/profile', [UserController::class, 'storeProfile'])->name('users.storeProfile');


