import { createAction, props } from '@ngrx/store';
import { PeriodicElement } from '../app.service';

export const getElements = createAction('[Elements] Get Element');
export const getElementsSuccess = createAction(
  '[Elements] Get Element Success',
  props<{ elements: PeriodicElement[] }>()
);
export const getElementsFailure = createAction(
  '[Elements] Get Element Failure',
  props<{ error: any }>()
);
