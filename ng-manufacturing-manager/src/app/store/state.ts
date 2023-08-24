import { PeriodicElement } from '../app.component';

export interface IElementState {
  loading: boolean;
  elements: PeriodicElement[];
  error: string | null;
}
