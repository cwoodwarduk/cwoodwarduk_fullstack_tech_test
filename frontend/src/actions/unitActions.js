import {
    UNIT_CHARGE_SAVE_FAIL,
    UNIT_CHARGE_SAVE_REQUEST,
    UNIT_CHARGE_SAVE_SUCCESS,
    UNIT_CHARGE_UPDATE_FAIL,
    UNIT_CHARGE_UPDATE_REQUEST,
    UNIT_CHARGE_UPDATE_SUCCESS,
    UNIT_LIST_FAIL,
    UNIT_LIST_REQUEST,
    UNIT_LIST_SUCCESS
} from "../constants/unitConstants";
import Axios from "axios";

const listUnits = () => async (dispatch) => {

    try {
        dispatch({type: UNIT_LIST_REQUEST});
        const {data} = await Axios.get("http://api.test/units");
        dispatch({type: UNIT_LIST_SUCCESS, payload: data});
    }
    catch(error){
        dispatch({type: UNIT_LIST_FAIL, payload: error.message});
    }

};

const unitSaveCharge = (unit, dateTime) => async (dispatch) => {
    console.log('save new charge');
    try{
        dispatch({type: UNIT_CHARGE_SAVE_REQUEST, payload: unit});
        const {data} = await Axios.post('http://api.test/units/' + unit.id, {
            'chargeStart': dateTime
        }, {
            headers: {
                'content-type': 'application/json'
            }
        });
        dispatch({type: UNIT_CHARGE_SAVE_SUCCESS, payload: data})
    } catch (error) {
        dispatch({type: UNIT_CHARGE_SAVE_FAIL, payload: error.message})
    }
};

const unitUpdateCharge = (unit, dateTime, chargeId) => async (dispatch) => {
    console.log('update charge');
    try{
        dispatch({type: UNIT_CHARGE_UPDATE_REQUEST, payload: unit});
        const {data} = await Axios.patch('http://api.test/units/' + unit.id + '/charges/' + chargeId, {
            'chargeEnd': dateTime
        }, {
            headers: {
                'content-type': 'application/json'
            }
        });
        dispatch({type: UNIT_CHARGE_UPDATE_SUCCESS, payload: data})
    } catch (error) {
        dispatch({type: UNIT_CHARGE_UPDATE_FAIL, payload: error.message})
    }
};

export {listUnits, unitSaveCharge, unitUpdateCharge}