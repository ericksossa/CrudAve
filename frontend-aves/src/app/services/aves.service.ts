import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { URL_SERVICES } from '../config/config';
import { Ave } from '../interfaces/Ave.interfaces';


@Injectable({
  providedIn: 'root'
})
export class AvesService {

  urlBase = URL_SERVICES;
  private headers = new HttpHeaders({
    'Content-Type': 'application/json'
  });


  constructor(private http: HttpClient) { }


  nuevaAve(ave: Ave) {
    const body = JSON.stringify(ave);
    const url = `${this.urlBase}tontaves`;
    return this.http.post(url, body, { headers: this.headers })
      .pipe(
        map(res => {
          return res;
        })
      );

  }

  // todas las aves
  getAves() {
    return this.http.get(`${this.urlBase}tontaves`).pipe(
      map(res => {
        return res;
      })
    );
  }

  // ave por id
  getAve(id: string) {
    return this.http.get(`${this.urlBase}tontaves/${id}`).pipe(
      map(res => {
        return res;
      })
    );

  }
  // todas las zonas
  getZonas() {
    return this.http.get(`${this.urlBase}tontzonas`).pipe(map(res => {
      return res;
    })
    );
  }

  editAve(ave: Ave, id: string) {
    const body = JSON.stringify(ave);
    const url = `${this.urlBase}tontaves/${id}`;
    return this.http.put(url, body, { headers: this.headers }).pipe(
      map(resp => {
        return resp;
      })
    );

  }

  deleteAve(id: string) {
    const url = `${this.urlBase}tontaves/${id}`;
    return this.http.delete(url).pipe(
      map(res => {
        return res;
      })
    );
  }
}
