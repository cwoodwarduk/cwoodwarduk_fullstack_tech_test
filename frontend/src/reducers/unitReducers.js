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


function unitListReducer(state = {units: []}, action) {
    switch (action.type) {
        case UNIT_LIST_REQUEST:
            return {loading: true};
        case UNIT_LIST_SUCCESS:
            return {loading: false, units: action.payload};
        case UNIT_LIST_FAIL:
            return {loading: false, error: action.payload};
        default:
            return state;
    }
}

function unitSaveChargeReducer(state = {unit: {}}, action){
    switch (action.type) {
        case UNIT_CHARGE_SAVE_REQUEST:
            return {loading: true};
        case UNIT_CHARGE_SAVE_SUCCESS:
            return {loading: false, success: true, unit: action.payload};
        case UNIT_CHARGE_SAVE_FAIL:
            return {loading: false, error: action.payload};
        default:
            return state;
    }
}

function unitUpdateChargeReducer(state = {unit: {}}, action){
    switch (action.type) {
        case UNIT_CHARGE_UPDATE_REQUEST:
            return {loading: true};
        case UNIT_CHARGE_UPDATE_SUCCESS:
            console.log(action.payload);
            return {loading: false, success: true, unit: action.payload};
        case UNIT_CHARGE_UPDATE_FAIL:
            return {loading: false, error: action.payload};
        default:
            return state;
    }
}

export {unitListReducer, unitSaveChargeReducer, unitUpdateChargeReducer}