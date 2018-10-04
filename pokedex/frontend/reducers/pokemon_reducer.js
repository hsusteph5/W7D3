import { RECEIVE_ALL_POKEMON } from '../actions/pokemon_actions';
import { merge } from "lodash/merge";

const pokemonReducer = (state = {}, action) => {
  let newState = merge({}, state);
  switch(action.type) {
    case RECEIVE_ALL_POKEMON:
      // merge({newState}, action.pokemon);
      return action.pokemon;
    default:
      return state;
  }

};



export default pokemonReducer;
