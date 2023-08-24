import { Injectable } from '@angular/core';
import { Actions, createEffect, ofType } from '@ngrx/effects';
import { getElements, getElementsFailure, getElementsSuccess } from './action';
import { catchError, map, merge, mergeMap, of } from 'rxjs';
import { AppService } from '../app.service';

@Injectable()
export class ElementEffect {
  constructor(private actions$: Actions, private _service: AppService) {}

  getElements$ = createEffect(() =>
    this.actions$.pipe(
      ofType(getElements),
      mergeMap(() => {
        return this._service.getElements().pipe(
          map((elements) => getElementsSuccess({ elements })),
          catchError((error) => of(getElementsFailure({ error })))
        );
      })
    )
  );
}
