import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class LimonService {
  API_URL       = environment.API;
  constructor(
    private httpClient: HttpClient
  ) {}


  listaPedido(){
    let token =sessionStorage.getItem("token");
    let headers = new HttpHeaders().set("Authorization", `Bearer ${token}`)
    return this.httpClient.get( this.API_URL+'api/Pedidos/Listar',{ headers: headers });
  }

  listaUsuario(){
    let token =sessionStorage.getItem("token");
    let headers = new HttpHeaders().set("Authorization", `Bearer ${token}`)
    return this.httpClient.get( this.API_URL+'api/Usuarios/Listar',{ headers: headers });
  }

  listaComprobante(){
    let token =sessionStorage.getItem("token");
    let headers = new HttpHeaders().set("Authorization", `Bearer ${token}`)
    return this.httpClient.get( this.API_URL+'api/Comprobantes/Listar',{ headers: headers });
  }

  listaPedidoDetalle(data: any){
    return this.httpClient.get( this.API_URL+'api/Pedidos/ListarDetalles/' + data.id );
  }


  listaConvocatoriaInterna(){
    let token =sessionStorage.getItem("token");
    let headers = new HttpHeaders().set("Authorization", `Bearer ${token}`)
    return this.httpClient.get( this.API_URL+'convocatoria/lista-interna',{ headers: headers });
  }
  login(data:any){
    return this.httpClient.post( this.API_URL+'autenticacion/login' , data );
  }

}
