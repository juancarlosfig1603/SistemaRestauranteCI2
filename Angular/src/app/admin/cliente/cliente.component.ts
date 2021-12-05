import { Component, OnInit } from '@angular/core';
import { LimonService } from 'src/app/services/limon.service';
import { NgxSpinnerService } from "ngx-spinner";
import Swal from 'sweetalert2'
import { Router } from '@angular/router';

@Component({
  selector: 'app-cliente',
  templateUrl: './cliente.component.html',
  styleUrls: ['./cliente.component.css']
})
export class ClienteComponent implements OnInit {
  listaUsuarios = [] as any
  constructor(
    private limon: LimonService,
    private spinner: NgxSpinnerService,
    private router: Router,
  ) { }

  ngOnInit(): void {
    this.loadData()
  }


  loadData() {
		this.spinner.show()

		this.limon.listaComprobante().subscribe((data: any) => {
			data.forEach((list: any) => {
        this.listaUsuarios.push({
          id      : list.idComprobante,
					tipo   : list.tipo,
          descripcion       : list.descripcion,
					serie      : list.serie,
          correlativo  : list.correlativo,
          fechaEmision   : list.fechaEmision,
          idpedido   : list.idPedido,
          idCliente   : list.idCliente,
          cliente   : list.nombreCliente,
          rucDni   : list.rucDni,
          subtotal   : list.subTotal,
          valorVenta   : list.valorVenta,
          igv   : list.igv,
          estado   : list.descripcionEstado,
          sunat   : list.envioSunat,
				})

			});
			this.spinner.hide();
		},
    (error) => {
      Swal.fire({
        title: 'Error!',
        text: 'Hubo un error para cargar la informacion',
        icon: 'error',
        confirmButtonText: 'Aceptar'
      })
    });

    

	}

}
