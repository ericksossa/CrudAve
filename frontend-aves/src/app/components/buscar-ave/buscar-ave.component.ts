import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { URL_SERVICES } from 'src/app/config/config';
import { Ave } from 'src/app/interfaces/Ave.interfaces';
import swal from 'sweetalert2';
import { AvesService } from '../../services/aves.service';

@Component({
  selector: 'app-buscar-ave',
  templateUrl: './buscar-ave.component.html',
  styleUrls: []
})
export class BuscarAveComponent implements OnInit {

  aves: Ave[] = [];
  termino: string;

  constructor(
    private activatedRoute: ActivatedRoute,
    private _avesservices: AvesService,
    private http: HttpClient) {
    this.activatedRoute.params
      .subscribe(params => {
        this.termino = params['termino'];
        this.buscar(this.termino);
      });

  }

  ngOnInit() {

  }

  buscar(termino: string) {

    const url = `${URL_SERVICES}tontaves/aves/${termino}`;

    this.http.get(url)
      .subscribe((resp: any) => {
        this.aves = resp;
      });

  }

  delete(ave: Ave) {

    const swalWithBootstrapButtons = swal.mixin({
      confirmButtonClass: 'btn btn-success',
      cancelButtonClass: 'btn btn-danger',
      buttonsStyling: false,
    });

    swalWithBootstrapButtons({
      title: 'Está seguro?',
      text: `¿Seguro que desea eliminar la ave: ${ave.cdave} ${ave.dsnombreComun}?`,
      type: 'warning',
      showCancelButton: true,
      confirmButtonText: 'Sí, eliminar!',
      cancelButtonText: 'No, cancelar!',
      reverseButtons: true
    }).then((result) => {
      if (result.value) {
        // se llama el servicio para eliminar la ave
        this._avesservices.deleteAve(ave.cdave)
          .subscribe(resp => {
            console.log(resp);
            swalWithBootstrapButtons(
              'Ave Eliminada!',
              `${ave.dsnombreComun} Exitosamente.`,
              'success'
            );

          });

      }
    });

  }

}
