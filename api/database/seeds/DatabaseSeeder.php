<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
//        $this->call(UnitTableSeeder::class);
//        $this->call(ChargeTableSeeder::class);
        $this->call(UnitChargeTagsSeeder::class);
    }
}
