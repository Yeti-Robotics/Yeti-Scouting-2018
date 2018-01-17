import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ScoutingFormComponent } from './components/scouting-form/scouting-form.component';
import { PitFormComponent } from './components/pit-form/pit-form.component';
import { HomeComponent } from './components/home/home.component';


const routes: Routes = [
  {
    path: 'form', 
    pathMatch: 'full',
    component: ScoutingFormComponent
  },
  {
    path: 'pit',
    pathMatch: 'full',
    component: PitFormComponent
  },
  {
    path: '',
    pathMatch: 'full',
    component: HomeComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes, {useHash: true})],
  exports: [RouterModule]
})
export class AppRoutingModule { }
