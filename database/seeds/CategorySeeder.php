<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert([
            [
                'name' => 'Frontend',
                'description' => str_random(255),
                'display' => 1,
            ],
            [
                'name' => 'Backend',
                'description' => str_random(255),
                'display' => 1,
            ],
            [
                'name' => 'Tester',
                'description' => str_random(255),
                'display' => 1,
            ],
            [
                'name' => 'Data Engine',
                'description' => str_random(255),
                'display' => 1,
            ],
        ]);
    }
}
