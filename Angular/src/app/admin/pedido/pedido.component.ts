import { Component, OnInit } from '@angular/core';
import { LimonService } from 'src/app/services/limon.service';
import { NgxSpinnerService } from "ngx-spinner";
import Swal from 'sweetalert2'
import { Router } from '@angular/router';
@Component({
  selector: 'app-pedido',
  templateUrl: './pedido.component.html',
  styleUrls: ['./pedido.component.css']
})
export class PedidoComponent implements OnInit {
  listaPedidos = [] as any
	listEstado = []
	// selectedItem
	totalCarga = 0
  constructor(
    private limon: LimonService,
    private spinner: NgxSpinnerService,
    private router: Router,
  ) { }

  ngOnInit(): void {
    // let usuario = sessionStorage.getItem('token')
		// if (typeof usuario !== 'undefined' && usuario == null) {
		// 	// this.router.navigateByUrl("/");
		// 	this.router.navigate(["/"]);
		// }
		this.loadData()
  }


  loadData() {
		this.spinner.show()

		this.limon.listaPedido().subscribe((data: any) => {
			data.forEach((list: any) => {
        this.listaPedidos.push({
          id      : list.idPedidoCabecera,
					estado   : list.descripcionEstado,
          fecha       : list.fechaPedido,
					mesaId      : list.idMesa,
          nomPersona  : list.nombreUsuario,
          cantPerso   : list.numeroPersonas,
          obs         : list.observaciones,
          igv         : list.igv,
          total       : list.total,
          subtotal    : list.subTotal
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
