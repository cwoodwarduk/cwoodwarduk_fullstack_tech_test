<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UnitChargeTag extends Model
{
    protected $table = 'unit_charge_tags';

    protected $fillable = [
        'unit_id',
        'charge_id'
    ];
}
