import React, {useEffect, useState} from 'react';
import './App.css';
import ChargeButton from "./components/ChargeButton";
import {useDispatch, useSelector} from "react-redux";
import {listUnits} from "./actions/unitActions";

function App() {

    const unitList = useSelector(state => state.unitList);
    const { units , loading, error } = unitList;

    const unitSaveCharge = useSelector(state => state.unitSaveCharge);
    const {loading: loadingSave, success: successSave, error: errorSave } = unitSaveCharge;

    const unitUpdateCharge = useSelector(state => state.unitUpdateCharge);
    const {loading: loadingUpdate, success: successUpdate, error: errorUpdate } = unitUpdateCharge;

    const dispatch = useDispatch();

    useEffect(() => {
        dispatch(listUnits());
        return () => {
            //
        };
    }, [successSave, successUpdate]);

  return (
      loading? <div>Loading...</div>:
          error? <div>{error}</div>:
      <div className="grid-container">

        <header className="header">
          <h2>Units</h2>
        </header>

        <main className="main">
          <div className="content">
            <ul className="all-units">
              {
                units.map(unit =>
                    <li className="unit" key={unit.id}>
                      <div className="unit-info-container">
                        <div className="unit-logo">
                          <img src={require("./images/charge_point_logo.png")} alt="charge-point"/>
                        </div>

                        <div className="unit-details">
                          <div>
                            <h4>{unit.name}</h4>
                            <p>{unit.address} - {unit.postcode}</p>
                          </div>
                        </div>

                          <ChargeButton unit={unit} availability={unit.status} />

                      </div>


                      {
                        unit.charges.length > 0 ?
                            <div className="unit-charge-info-container">
                              {unit.charges.length} charges
                            </div>
                            :
                            <div className="unit-charge-info-container">
                              No charges
                            </div>
                      }


                    </li>
                )
              }


            </ul>
          </div>
        </main>

        <footer className="footer">

          <div className="footer-item-container">
            <img src={require("./images/favourites_logo.png")} alt="favourites logo"/>
            <h4>Favourites</h4>
          </div>

          <div className="footer-item-container">
            <img src={require("./images/units_logo.png")} alt="units logo"/>
            <h4>Units</h4>
          </div>

          <div className="footer-item-container">
            <img src={require("./images/account_logo.png")} alt="account logo"/>
            <h4>Account</h4>
          </div>

        </footer>

      </div>
  );
}

export default App;
