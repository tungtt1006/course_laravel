<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;
use App\Models\Order;

$factory->define(Order::class, function (Faker $faker) {
    return [
        'user_id' => 1,
        'class_id' => 1,
        'price' => 300000,
        'admin_id' => 1
    ];
});
