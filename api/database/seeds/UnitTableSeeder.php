<?php

use Illuminate\Database\Seeder;
use \App\Unit;

class UnitTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Unit::class, 55)->create();
    }
}
