import { createReducer, on } from '@ngrx/store';
import { IElementState } from './state';
import * as actions from './action';

export const initialState: IElementState = {
  loading: false,
  elements: [],
  error: null,
};

export const reducers = createReducer(
  initialState,
  on(actions.getElements, (state) => ({ ...state, loading: true })),
  on(actions.getElementsSuccess, (state, { elements }) => ({
    ...state,
    elements,
    loading: false,
    error: null,
  })),
  on(actions.getElementsFailure, (state, { error }) => ({
    ...state,
    error,
    loading: false,
  }))
);
