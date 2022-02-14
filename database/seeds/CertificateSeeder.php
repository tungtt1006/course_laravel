<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

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
                'description' => Str::random(255),
            ],
            [
                'name' => 'Bằng giỏi',
                'description' => Str::random(255),
            ],
            [
                'name' => 'Bằng khá',
                'description' => Str::random(255),
            ],
            [
                'name' => 'Bằng trung bình',
                'description' => Str::random(255),
            ],
            [
                'name' => 'Bằng đặc biệt',
                'description' => Str::random(255),
            ],
        ]);
    }
}
