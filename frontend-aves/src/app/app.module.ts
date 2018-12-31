import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
// components
import { AvesComponent } from './components/aves/aves.component';
import { NavbarComponent } from './components/navbar/navbar.component';
import { FooterComponent } from './components/footer/footer.component';
import { NuevaAveComponent } from './components/nueva-ave/nueva-ave.component';
import { BuscarAveComponent } from './components/buscar-ave/buscar-ave.component';
// paginacion
import {NgxPaginationModule} from 'ngx-pagination'; // <-- import the module
import { MaterialModule } from './material.module';
import { FormsModule } from '@angular/forms';



@NgModule({
  declarations: [
    AppComponent,
    AvesComponent,
    NavbarComponent,
    FooterComponent,
    NuevaAveComponent,
    BuscarAveComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    NgxPaginationModule,
    MaterialModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
