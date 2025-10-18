<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    // Hiển thị danh sách user kèm profile
    public function index()
    {
        // Lấy tất cả user kèm profile
        $users = User::with('profile')->get();

        return view('users.index', compact('users'));
    }

    // Form tạo profile cho user
    public function createProfile($id)
    {
        $user = User::findOrFail($id);
        return view('users.create_profile', compact('user'));
    }

    // Lưu profile vào DB
    public function storeProfile(Request $request, $id)
    {
        $user = User::findOrFail($id);

        $request->validate([
            'address' => 'required|string|max:255',
            'phone'   => 'required|string|max:20',
        ]);

        $user->profile()->create([
            'address' => $request->address,
            'phone'   => $request->phone,
        ]);

        return redirect()->route('users.index')->with('success', 'Tạo profile thành công!');
    }
}
