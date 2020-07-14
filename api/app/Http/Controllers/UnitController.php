<?php

namespace App\Http\Controllers;

use App\Charge;
use App\Http\Resources\UnitResource;
use App\Http\Resources\UnitResourceCollection;
use App\Unit;
use App\Rules\UKPostcode;
use App\UnitChargeTag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class UnitController extends Controller
{

    /**
     * Method index() takes a generic get request
     * and returns an array of all Units and their associated Charges
     *
     * @return array An array containing all Units and their associated Charges
     */
    public function index()
    {

        $units = Unit::get_all_units();

        foreach ($units as $unit){
            $unit_id = $unit->id;

            $charges = Charge::get_charges_for_unit($unit_id);

            $unit->charges = $charges;
        }

        return $units;

    }


    /**
     * Method show() accepts a Unit ID and returns an array
     * containing the specified Unit and it's associated Charges
     *
     * @param $unitId integer of a specific Unit's ID
     *
     * @return array An array containing the Unit and its associated Charges
     */
    public function show($unitId)
    {

        $unit = Unit::get_unit_by_id($unitId);

        $charges = Charge::get_charges_for_unit($unitId);

        $unit[0]->charges = $charges;

        return $unit;

    }

    /**
     * Method store() accepts a Unit ID and
     * creates a new Charge for said Unit and
     * sets the Unit's status to 'unavailable'
     *
     * @param Request $request containing
     * the chargeStart key-value pair
     * a DateTime string of format Y-m-d hh:mm:ss
     *
     * @param $unitId integer of a specific Unit's ID
     *
     * @return \Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     * response containing a success code and the Charge ID
     * of the recently created Charge in the response header
     * as X-Entity-Id
     */
    public function store(Request $request, $unitId)
    {

        $request->validate([
            'chargeStart' => 'required|date',
        ]);

        $charge = new Charge;
        $charge->charge_start = $request->input('chargeStart');
        $charge->save();
        $charge_id = $charge->id;

        $unit_charge_tag = new UnitChargeTag;
        $unit_charge_tag->unit_id = $unitId;
        $unit_charge_tag->charge_id = $charge_id;
        $unit_charge_tag->save();

        $unit_status = 'charging';

        Unit::update_unit_status($unitId, $unit_status);

        return response([$charge_id], 200)
            ->header('X-Entity-Id', $charge_id);

    }

    /**
     * Method update() takes a Unit ID, a Charge ID,
     * and chargeEnd key-value pair, and inserts a stop time
     * for a specified charge associated with
     * a specified unit and sets a unit's status to 'available'.
     *
     *
     * @param Request $request containing the chargeStart and chargeEnd
     * key-value pairs, both DateTime strings of format Y-m-d hh:mm:ss
     *
     * @param $unitId integer of a specific Unit's ID
     *
     * @param $chargeId integer of a specific Charge's ID
     *
     * @return \Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     * response containing either a 200 success code or an error code
     * and it's associated error message
     */
    public function update(Request $request, $unitId, $chargeId)
    {
        $request->validate([
            'chargeEnd' => 'required|date'
        ]);

        $matching_charge = Charge::get_charge($chargeId);

        if($matching_charge[0]->charge_end != null){

            return response('Charge already ended.', 409);

        } elseif ($matching_charge[0]->unit_id == $unitId){

            $charge_end = $request->input('chargeEnd');

            Charge::update_charge($chargeId, $charge_end);

            $unit_status = 'available';

            Unit::update_unit_status($unitId, $unit_status);

            return response('Update successful.', 200);

        } else {

            return response('No match found.', 404);

        }
    }

}
