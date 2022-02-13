<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Teacher;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(Teacher::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'description' => Str::random(100),
    ];
});
