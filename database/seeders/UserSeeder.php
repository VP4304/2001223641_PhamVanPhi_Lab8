<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        // Tạo 3 user mẫu
        $user1 = User::create([
            'name' => 'Nguyen Van A',
            'email' => 'a@example.com',
            'password' => bcrypt('123456'),
        ]);

        $user2 = User::create([
            'name' => 'Tran Thi B',
            'email' => 'b@example.com',
            'password' => bcrypt('123456'),
        ]);

        $user3 = User::create([
            'name' => 'Le Van C',
            'email' => 'c@example.com',
            'password' => bcrypt('123456'),
        ]);

        // Gắn profile cho 2 user đầu tiên
        $user1->profile()->create([
            'address' => '123 Nguyễn Trãi, Q.1, HCM',
            'phone'   => '0909123456',
        ]);

        $user2->profile()->create([
            'address' => '456 Lê Lợi, Q.3, HCM',
            'phone'   => '0912345678',
        ]);

        // User3 chưa có profile để test trường hợp "Chưa có"
    }
}
