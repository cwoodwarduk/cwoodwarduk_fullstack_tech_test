import {createStore, combineReducers, applyMiddleware, compose} from "redux";
import thunk from 'redux-thunk';
import {unitListReducer, unitSaveChargeReducer, unitUpdateChargeReducer} from "./reducers/unitReducers";

const initialState = {};
const reducer = combineReducers({
    unitList: unitListReducer,
    unitSaveCharge: unitSaveChargeReducer,
    unitUpdateCharge: unitUpdateChargeReducer
});

const composeEnhancer = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;

const store = createStore(reducer, initialState, compose(applyMiddleware(thunk)));

export default store;