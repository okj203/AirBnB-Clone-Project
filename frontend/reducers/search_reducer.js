import { REQUIRE_SEARCH } from "../actions/search_action";

const searchReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case REQUIRE_SEARCH:
      return action.info;
    default:
      return state;
  }
};

export default searchReducer;
