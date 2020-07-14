<?php

use Illuminate\Database\Seeder;
use App\UnitChargeTag;

class UnitChargeTagsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(UnitChargeTag::class, 15)->create();
    }
}
