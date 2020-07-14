<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Charge extends Model
{
    protected $table = 'charges';

    protected $fillable = [
        'charge_start',
        'charge_end'
    ];

    public static function get_charge($chargeId){
        $charge = DB::table('charges')
            ->join('unit_charge_tags', 'charges.id', '=', 'unit_charge_tags.charge_id')
            ->where('unit_charge_tags.charge_id', $chargeId)
            ->get()
            ->toArray();

        return $charge;
    }

    public static function get_charges_for_unit($unitId){
        $charges_for_unit = DB::table('charges')
            ->join('unit_charge_tags', 'charges.id', '=', 'unit_charge_tags.charge_id')
            ->where('unit_charge_tags.unit_id', $unitId)
            ->get();

        return $charges_for_unit;
    }

    public static function update_charge($chargeId, $chargeEnd){
        $update = DB::table('charges')
            ->where('id', $chargeId)
            ->update([
                'charge_end' => $chargeEnd
            ]);

        return $update;
    }
}
