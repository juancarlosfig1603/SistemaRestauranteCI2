import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { CartaComponent } from './carta/carta.component';
import { ClienteComponent } from './cliente/cliente.component';
import { DetalleComponent } from './detalle/detalle.component';
import { MenuCartaComponent } from './menu-carta/menu-carta.component';
import { PedidoComponent } from './pedido/pedido.component';
import { CrearComponent } from './usuario/crear/crear.component';
import { UsuarioComponent } from './usuario/usuario.component';

const routes: Routes = [
  { path: 'cliente' , component: ClienteComponent },
  { path: 'comprobante' , component: ClienteComponent },
  { path: 'pedido' , component: PedidoComponent },
  
  { path: 'usuario' , component: UsuarioComponent },
  { path: 'usuario-crear' , component: CrearComponent },

  { path: 'carta' , component: CartaComponent },
  { path: 'detalle' , component: DetalleComponent },
  { path: 'menu-carta' , component: MenuCartaComponent },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class AdminRoutingModule { }
