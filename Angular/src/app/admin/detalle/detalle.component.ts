import { Component, OnInit } from '@angular/core';
import { LimonService } from 'src/app/services/limon.service';
import { NgxSpinnerService } from "ngx-spinner";
import Swal from 'sweetalert2'
import { Router } from '@angular/router';


@Component({
  selector: 'app-detalle',
  templateUrl: './detalle.component.html',
  styleUrls: ['./detalle.component.css']
})
export class DetalleComponent implements OnInit {
  listaPedidos = [] as any
	
  persona : string = ""
  total : string = ""
  igv : string = ""
  subTotal : string = ""
  mesa : string = ""
  obs : string = ""
  
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

		this.limon.listaPedido().subscribe((data: any) => {

      this.persona = data[0].nombreUsuario
      this.total = data[0].total
      this.igv = data[0].igv
      this.subTotal = data[0].subTotal
      this.obs = data[0].observaciones
      this.mesa = data[0].idMesa

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


    this.limon.listaPedidoDetalle({id:'13'}).subscribe((data: any) => {
			data.forEach((list: any) => {
        this.listaPedidos.push({
          idCabeza      : list.idPedidoCabecera,
          idDetalle      : list.idPedidoDetalle,
          secuencia      : list.secuencia,
					producto    : list.producto,
          cantidad       : list.cantidad,
					punitario      : list.precioUnitario,
          subtotal    : list.subTotal,
          igv         : list.igv,
          total       : list.total
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
