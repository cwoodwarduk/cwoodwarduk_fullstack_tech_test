<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Unit extends Model
{
    protected $table = 'units';

    protected $fillable = [
        'address',
        'postcode',
        'name'
    ];

    public static function get_all_units(){
        $units = DB::table('units')
            ->get()
            ->toArray();

        return $units;
    }

    public static function get_unit_by_id($unitId){
        $unit = DB::table('units')
            ->where('id', $unitId)
            ->get()
            ->toArray();

        return $unit;
    }

    public static function update_unit_status($unitId, $status){
        $update = DB::table('units')
            ->where('id', $unitId)
            ->update([
                'status' => $status
            ]);

        return $update;
    }
}
