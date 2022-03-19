<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use Faker\Generator as Faker;

$autoIncrement = autoIncrement();
$factory->define(App\Models\Period::class, function (Faker $faker) use ($autoIncrement) {
    $autoIncrement->next();
    return [
        'class_id' => 1,
        'time_in' => date('Y-m-d H:i:s'),
        'time_out' => date('Y-m-d H:i:s'),
        'number' => $autoIncrement->current()
    ];
});

// function autoIncrement()
// {
//     for ($i = 0; $i < 1000; $i++) {
//         yield $i;
//     }
// }
