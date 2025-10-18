<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Product;

class CategoryFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => $this->faker->unique()->word(),
            'description' => $this->faker->sentence(),
        ];
    }

    // Tự động tạo 10 products khi gọi ->hasProducts(10)
    public function configure()
    {
        return $this->afterCreating(function ($category) {
            \App\Models\Product::factory(10)->create([
                'category_id' => $category->id,
            ]);
        });
    }
}
