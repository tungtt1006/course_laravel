<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClassesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('periods')->insert([
            [
                'classes_id' => 1,
                'day_in' => date('Y-m-d H:i:s'),
                'day_out' => date('Y-m-d H:i:s'),
                'order' => 1
            ],
            [
                'classes_id' => 1,
                'day_in' => date('Y-m-d H:i:s'),
                'day_out' => date('Y-m-d H:i:s'),
                'order' => 2
            ],
            [
                'classes_id' => 1,
                'day_in' => date('Y-m-d H:i:s'),
                'day_out' => date('Y-m-d H:i:s'),
                'order' => 3
            ],
            [
                'classes_id' => 1,
                'day_in' => date('Y-m-d H:i:s'),
                'day_out' => date('Y-m-d H:i:s'),
                'order' => 4
            ],
            [
                'classes_id' => 1,
                'day_in' => date('Y-m-d H:i:s'),
                'day_out' => date('Y-m-d H:i:s'),
                'order' => 5
            ],
        ]);
    }
}
