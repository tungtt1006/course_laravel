<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PeriodSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $classes = DB::table('classes')->where('status', 'finish')->get();
        foreach ($classes as $class) {
            factory(App\Models\Period::class, $class->sessions)->create([
                'class_id' => $class->id
            ]);
        }
    }
}
