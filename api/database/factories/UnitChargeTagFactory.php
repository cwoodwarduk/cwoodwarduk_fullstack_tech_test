<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\UnitChargeTag;
use Faker\Generator as Faker;

$factory->define(UnitChargeTag::class, function (Faker $faker) {
    return [
        'unit_id'=>$faker->unique(true)->numberBetween(1,5),
        'charge_id'=>$faker->unique(true)->numberBetween(1,15)
    ];
});
