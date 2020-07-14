<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Unit;
use Faker\Generator as Faker;

$factory->define(Unit::class, function (Faker $faker) {

    $statusValues = ['available', 'charging'];

    return [
        'address' => $faker->streetAddress,
        'postcode' => $faker->postcode,
        'name' => $faker->streetName,
        'status' => $statusValues[rand(0,1)]
    ];
});
