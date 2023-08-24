import { createSelector } from '@ngrx/store';
import { AppState } from '../app.state';

export const selectFeature = (state: AppState) => state.elements;

export const isElementLoading = createSelector(
  selectFeature,
  (state) => state.loading
);

export const elementsFailure = createSelector(
  selectFeature,
  (state) => state.error
);

export const elements = createSelector(
  selectFeature,
  (state) => state.elements
);
