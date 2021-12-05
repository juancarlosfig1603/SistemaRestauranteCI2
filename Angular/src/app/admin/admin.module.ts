import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AdminRoutingModule } from './admin-routing.module';
import { UsuarioComponent } from './usuario/usuario.component';
import { PedidoComponent } from './pedido/pedido.component';
import { ClienteComponent } from './cliente/cliente.component';
import { BrowserModule } from '@angular/platform-browser';
import { IncludeModule } from '../include/include.module';
import { CartaComponent } from './carta/carta.component';
import { MenuCartaComponent } from './menu-carta/menu-carta.component';
import { DetalleComponent } from './detalle/detalle.component';
import { CrearComponent } from './usuario/crear/crear.component';

@NgModule({
  declarations: [
    UsuarioComponent,
    PedidoComponent,
    ClienteComponent,
    CartaComponent,
    MenuCartaComponent,
    DetalleComponent,
    CrearComponent
  ],
  imports: [
    CommonModule,
    AdminRoutingModule,
    BrowserModule,
    IncludeModule
  ],
  exports:[
    UsuarioComponent,
    PedidoComponent,
    ClienteComponent,
    CartaComponent,
    DetalleComponent,
    MenuCartaComponent
  ]
})
export class AdminModule { }
