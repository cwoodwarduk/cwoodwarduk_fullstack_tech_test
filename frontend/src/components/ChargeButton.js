import React, {useEffect, useState} from "react";
import {useDispatch, useSelector} from "react-redux";
import {listUnits, unitSaveCharge, unitUpdateCharge} from "../actions/unitActions";
import './chargeButton.css';

function ChargeButton(props) {

    const [unitAvailable, setUnitAvailable] = useState(props.availability);

    const dispatch = useDispatch();



    const startChargeHandler = (unit) => {
        const dateTime = new Date().toISOString().substr(0, 19);
        dispatch(unitSaveCharge(unit, dateTime));
    };

    const updateChargeHandler = (unit) => {
        const charge = props.unit.charges[props.unit.charges.length - 1];
        const dateTime = new Date().toISOString().substr(0, 19);
        const chargeId = charge.id;
        dispatch(unitUpdateCharge(unit, dateTime, chargeId));
    };

    if(unitAvailable === 'available'){
        return (<div className="status-action-container">
                <div className="status-title-available">
                    AVAILABLE
                </div>
                <div className="status-action-button-available">
                    <button type="button" onClick={() => {
                        setUnitAvailable('charging');
                        startChargeHandler(props.unit)
                    }}>
                        Start
                    </button>
                </div>
            </div>
        )
    } else {
        return (<div className="status-action-container">
                <div className="status-title-charging">
                    CHARGING
                </div>
                <div className="status-action-button-charging">
                    <button {...props} type="button" onClick={() => {
                        setUnitAvailable('available');
                        updateChargeHandler(props.unit)
                    }}>
                        Stop
                    </button>
                </div>
            </div>
        )
    }
}

export default ChargeButton