<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Charge;
use Faker\Generator as Faker;

$factory->define(Charge::class, function (Faker $faker) {
    return [
        'charge_start'=>$faker->dateTimeBetween('-1 week', 'now' ),
        'charge_end'=>null
    ];
});
