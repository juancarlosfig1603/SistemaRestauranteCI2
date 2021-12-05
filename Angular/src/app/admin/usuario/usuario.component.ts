import { Component, OnInit } from '@angular/core';
import { LimonService } from 'src/app/services/limon.service';
import { NgxSpinnerService } from "ngx-spinner";
import Swal from 'sweetalert2'
import { Router } from '@angular/router';

@Component({
  selector: 'app-usuario',
  templateUrl: './usuario.component.html',
  styleUrls: ['./usuario.component.css']
})
export class UsuarioComponent implements OnInit {
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

		this.limon.listaUsuario().subscribe((data: any) => {
			data.forEach((list: any) => {
        this.listaUsuarios.push({
          id      : list.nIdUsuario,
					nombre   : list.sNombre,
          login       : list.sLogin,
					tipo      : list.sDescripcionTipo,
          estado  : list.sEstado,
          email   : list.sEmail
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
