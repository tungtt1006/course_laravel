<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('orders')->insert([
            [
                'customers_id' => 1,
                'classes_id' => 2,
                'price' => 300000,
                'status' => 0
            ],
            [
                'customers_id' => 1,
                'classes_id' => 2,
                'price' => 300000,
                'status' => 0
            ],
            [
                'customers_id' => 2,
                'classes_id' => 1,
                'price' => 300000,
                'status' => 0
            ],
            [
                'customers_id' => 3,
                'classes_id' => 1,
                'price' => 300000,
                'status' => 0
            ],
            [
                'customers_id' => 4,
                'classes_id' => 2,
                'price' => 300000,
                'status' => 0
            ],
        ]);
    }
}
