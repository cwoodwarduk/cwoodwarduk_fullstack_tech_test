<?php

use Illuminate\Database\Seeder;
use \App\Charge;

class ChargeTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(Charge::class, 15)->create();
    }
}
