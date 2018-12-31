import { Component, OnInit } from "@angular/core";
import { AvesService } from "../../services/aves.service";
import swal from "sweetalert2";
import { Ave } from "src/app/interfaces/Ave.interfaces";
import { Zona } from "src/app/interfaces/Zona.interface";

@Component({
  selector: "app-aves",
  templateUrl: "./aves.component.html",
  styleUrls: ["./aves.component.css"]
})
export class AvesComponent implements OnInit {
  aves: Ave[] = [];
  zonas: Zona[] = [];
  p: number;
  constructor(private _avesservices: AvesService) {
    this.p = 1;
  }

  ngOnInit() {
    this.cargarAves();
    this.cargarZonas();
  }

  cargarAves() {
    this._avesservices.getAves().subscribe((data: any) => {
      this.aves = data;
    });
  }

  obtenerAves(value: any) {
    console.log(value);
  }

  cargarZonas() {
    this._avesservices.getZonas().subscribe((data: any) => {
      this.zonas = data;
    });
  }

  delete(ave: Ave) {
    const swalWithBootstrapButtons = swal.mixin({
      confirmButtonClass: "btn btn-success",
      cancelButtonClass: "btn btn-danger",
      buttonsStyling: false
    });

    swalWithBootstrapButtons({
      title: "Está seguro?",
      text: `¿Seguro que desea eliminar la ave: ${ave.cdave} ${
        ave.dsnombreComun
      }?`,
      type: "warning",
      showCancelButton: true,
      confirmButtonText: "Sí, eliminar!",
      cancelButtonText: "No, cancelar!",
      reverseButtons: true
    }).then(result => {
      if (result.value) {
        // se llama el servicio para eliminar la ave
        this._avesservices.deleteAve(ave.cdave).subscribe(resp => {
          this.aves = this.aves.filter(av => av !== ave);
          swalWithBootstrapButtons(
            "Ave Eliminada!",
            `${ave.dsnombreComun} Exitosamente.`,
            "success"
          );
        });
      }
    });
  }
}
