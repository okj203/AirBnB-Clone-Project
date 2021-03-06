import { combineReducers } from "redux";
import entitiesReducer from "./entities_reducer";
import errorsReducer from "./errors_reducer";
import sessionReducer from "./session_reducer";
import UIReducer from "../reducers/ui_reducer";

// const DEFAULT_STATE = {
//     entities: {
//       users: {}
//     },
//     session: {
//       id: null,
//     },
//     errors: {
//       session: ["Invalid credentials"]
//     }
// };

const rootReducer = combineReducers({
    entities: entitiesReducer,
    errors: errorsReducer,
    session: sessionReducer,
    ui: UIReducer
});

export default rootReducer;