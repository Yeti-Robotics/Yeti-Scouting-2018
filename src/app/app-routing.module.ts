import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ScoutingFormComponent } from './components/scouting-form/scouting-form.component';

const routes: Routes = [
  {
    path: 'form',
    pathMatch: 'full',
    component: ScoutingFormComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes, {useHash: true})],
  exports: [RouterModule]
})
export class AppRoutingModule { }
