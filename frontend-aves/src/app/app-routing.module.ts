import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
// pages
import { AvesComponent } from './components/aves/aves.component';
import { NuevaAveComponent } from './components/nueva-ave/nueva-ave.component';
import { BuscarAveComponent } from './components/buscar-ave/buscar-ave.component';

const routes: Routes = [
  { path: 'home', component: AvesComponent },
  { path: 'nuevaAve/:id', component: NuevaAveComponent },
  { path: 'busqueda/:termino', component: BuscarAveComponent },
  { path: '**', pathMatch: 'full', redirectTo: 'home' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
