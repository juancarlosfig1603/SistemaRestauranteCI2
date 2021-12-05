import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { HttpErrorResponse } from '@angular/common/http';
import { NgxSpinnerService } from "ngx-spinner";
import { LimonService } from 'src/app/services/limon.service';
import { ToastrService } from 'ngx-toastr';
import Swal from 'sweetalert2'
@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.css']
})
export class InicioComponent implements OnInit {
  
	submitted = false;
  // grupoFiltro: FormGroup;
  usuario = ''
  pass = ''

  constructor(
    private formBuilder: FormBuilder,
		private spinner: NgxSpinnerService,
		private router: Router,
		private limon: LimonService,
    private toastr: ToastrService
  ) { }

  ngOnInit(): void {
    let usuario = sessionStorage.getItem('token')
		if (typeof usuario != 'undefined' && usuario != null) {
			window.location.href = 'appConvocatoria/convocatorias/interna'
		}
		// this.validFormulario()
  }

  // validFormulario() {
	// 	this.grupoFiltro = this.formBuilder.group({
	// 		usuario: ['', Validators.required],
	// 		clave: ['', Validators.required]
	// 	});
	// }
	// get f() { return this.grupoFiltro.controls; }

	login() {
		this.spinner.show();
		this.submitted = true;
		// if (!this.grupoFiltro.invalid) {
			// let usuario = this.grupoFiltro.controls['usuario'].value
			// let clave = this.grupoFiltro.controls['clave'].value
  
    if (this.usuario == "" && this.pass == "") {
        Swal.fire({
          title: 'Error!',
          text: 'Debe ingresar los datos',
          icon: 'error',
          confirmButtonText: 'Aceptar'
        })
        return
    }

			const arrClave = {
				'usuario': this.usuario,
				'clave': this.pass,
			}
			this.limon.login(arrClave).subscribe((data: any) => {
				// console.log(data)
				if (data.token !== '') {
					// sessionStorage.setItem('credenciales', JSON.stringify(data.data));
					sessionStorage.setItem('token', data.token);
					sessionStorage.setItem('usuario', data.txtUsuario);
					sessionStorage.setItem('codUsuario', data.codUsuario);
					// this.toastrService.success("Se registro correctamente la convocatoria" ,"CONVOCATORIA");
					// this.router.navigate(['convocatorias/interna']);
					window.location.href = '/appConvocatoria/convocatorias/interna'
				} else {
          Swal.fire({
            title: 'Error!',
            text: 'Ocurrio un error',
            icon: 'error',
            confirmButtonText: 'Aceptar'
          })
          return
				}
				this.spinner.hide();
			},
      error => {
        //console.log(error)
        if (error instanceof HttpErrorResponse) {
          if (error.error instanceof ErrorEvent) {
            //console.error("Error Event");
          } else {
            //console.log(`error status : ${error.status} ${error.statusText}`);
            // console.log(error.error)
            this.spinner.hide();
            switch (error.status) {
              case 400:
                this.toastr.success("Usuario y/o clave estan incorrectos", "CONVOCATORIA");
                break;
              case 401:      //login
                this.router.navigateByUrl("/");
                break;
              case 403:     //forbidden
                // this.router.navigateByUrl("/unauthorized");
                break;
            }
          }
        } else {
          // console.error("some thing else happened");
        }
      });

			// setTimeout(() => {
			// 	this.spinner.hide();
			// 	this.toastrService.success("Se envio los datos correctamente" ,"Archivo enviado");
			// }, 2000);
			return
		// }
		// setTimeout(() => {
		this.spinner.hide();
		this.toastr.success("Debe de ingresar los datos", "CONVOCATORIA");
		// }, 2000);
	}

}
