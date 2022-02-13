<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CertificateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('certificates')->insert([
            [
                'name' => 'Bằng xuấst sắc',
                'description' => str_random(255),
            ],
            [
                'name' => 'Bằng giỏi',
                'description' => str_random(255),
            ],
            [
                'name' => 'Bằng khá',
                'description' => str_random(255),
            ],
            [
                'name' => 'Bằng trung bình',
                'description' => str_random(255),
            ],
            [
                'name' => 'Bằng đặc biệt',
                'description' => str_random(255),
            ],
        ]);
    }
}
