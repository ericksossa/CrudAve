import { Component, OnInit } from '@angular/core';
import { AvesService } from '../../services/aves.service';
import { Zona } from 'src/app/interfaces/Zona.interface';
import { Ave } from '../../interfaces/Ave.interfaces';
import { ActivatedRoute, Router } from '@angular/router';
import swal from 'sweetalert2';


@Component({
  selector: 'app-nueva-ave',
  templateUrl: './nueva-ave.component.html',
  styleUrls: ['./nueva-ave.component.css']
})
export class NuevaAveComponent implements OnInit {


  public ave: Ave = {
    cdave: '',
    dsnombreCientifico: '',
    dsnombreComun: '',
  };
  zonas: Zona[] = [];
  id: string;

  constructor(
    private avesService: AvesService,
    private activatedRoute: ActivatedRoute,
    private router: Router) {

    this.activatedRoute.params
      .subscribe(parametros => {
        this.id = parametros['id'];
        if (this.id !== 'nuevo') {
          this.avesService.getAve(this.id)
            .subscribe((resp: any) => this.ave = resp);
        }

      });
  }

  ngOnInit() {
    this.avesService.getZonas()
      .subscribe((data: any) => {
        this.zonas = data;
      });
  }



  guardar() {

    if (this.id === 'nuevo') {
      // insertando
      this.avesService.nuevaAve(this.ave)
        .subscribe((data) => {
          swal('Nueva ave', `Ave ${this.ave.dsnombreComun} creada con éxito!`, 'success');
          this.router.navigate(['/home']);

        }, error => console.log(error));


    } else {
      // actualizando
      this.avesService.editAve(this.ave, this.id)
        .subscribe(resp => {
          swal('Ave', `Ave ${this.ave.cdave} actualizada con éxito!`, 'success');
          this.router.navigate(['/home']);
        });

    }
  }



}
