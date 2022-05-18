<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Faker\Factory as Faker;
class CertificateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        DB::table('certificates')->insert([
            [
                'name' => 'Bằng xuất sắc',
                'description' => $faker->text(),
            ],
            [
                'name' => 'Bằng giỏi',
                'description' => $faker->text(),
            ],
            [
                'name' => 'Bằng khá',
                'description' => $faker->text(),
            ],
            [
                'name' => 'Bằng trung bình',
                'description' => $faker->text(),
            ],
            [
                'name' => 'Bằng đặc biệt',
                'description' => $faker->text(),
            ],
        ]);
    }
}
