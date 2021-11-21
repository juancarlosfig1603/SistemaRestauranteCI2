using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ApiRestQTL.Datos;
using ApiRestQTL.Entidades.Pedidos;
using ApiRestQTL.Web.Models.Pedidos;

namespace ApiRestQTL.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PedidosController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;

        public PedidosController(DbContextApiRestQTL context)
        {
            _context = context;
        }


        // GET: api/Pedidos/Listar
        //  [Authorize(Roles = "Almacenero, Administrador")]
        [HttpGet("[action]")]
        public async Task<IEnumerable<PedidoViewModel>> Listar()
        {
            var pedido = await _context.Pedidos
                .Include(p => p.usuario)
                .Include(e => e.estado)
                .OrderByDescending(p => p.nIdPedidoCabecera)
                .Take(100)
                .ToListAsync();

            return pedido.Select(p => new PedidoViewModel

            {
                IdPedidoCabecera = p.nIdPedidoCabecera,
                IdUsuario = p.nIdUsuario,
                NombreUsuario = p.usuario.sNombre,
                FechaPedido = p.dFechaPedido,
                IdMesa = p.nIdMesa,
                Estado = p.sEstado,
                DescripcionEstado = p.estado.sDescripcionEstado,
                NumeroPersonas = p.nNumeroPersonas,
                Observaciones = p.sObservaciones,
                SubTotal = p.nSubTotal,
                Igv = p.nIgv,
                Total = p.nTotal
            }); ;
        }

        // GET: api/Ingresos/ListarFiltro
        //  [Authorize(Roles = "Almacenero, Administrador")]
        [HttpGet("[action]/{idPedido}")]
        public async Task<IEnumerable<PedidoViewModel>> Mostrar([FromRoute] int idPedido)
        {
            var pedido = await _context.Pedidos
                .Include(p => p.usuario)
                .Include(e => e.estado)
                .Where(p => p.nIdPedidoCabecera == idPedido)
                .OrderByDescending(p => p.nIdPedidoCabecera)
                .ToListAsync();

            return pedido.Select(p => new PedidoViewModel

            {
                IdPedidoCabecera = p.nIdPedidoCabecera,
                IdUsuario = p.nIdUsuario,
                NombreUsuario = p.usuario.sNombre,
                FechaPedido = p.dFechaPedido,
                IdMesa = p.nIdMesa,
                Estado = p.sEstado,
                DescripcionEstado = p.estado.sDescripcionEstado,
                NumeroPersonas = p.nNumeroPersonas,
                Observaciones = p.sObservaciones,
                SubTotal = p.nSubTotal,
                Igv = p.nIgv,
                Total = p.nTotal

            }); ;
        }

        // GET: api/Ingresos/ListarDetalles
        //[Authorize(Roles = "Almacenero, Administrador")]
        [HttpGet("[action]/{idPedido}")]
        public async Task<IEnumerable<PedidoDetalleViewModel>> ListarDetalles([FromRoute] int idPedido)
        {
            var detalle = await _context.PedidosDetalles
                .Include(p => p.nIdProducto)
                .Where(d => d.nIdPedidoCabecera == idPedido)
                .ToListAsync();

            return detalle.Select(d => new PedidoDetalleViewModel

            {
                IdPedidoDetalle = d.nIdPedidoDetalle,
                IdPedidoCabecera = d.nIdPedidoCabecera,
                Secuencia = d.nSecuencia,
                IdProducto = d.nIdProducto,
                Producto = d.producto.sDescripcionProducto,
                Cantidad = d.nCantidad,
                PrecioUnitario = d.nPrecioUnitario,
                SubTotal = d.nSubTotal,
                IGV = d.nIGV,
                Total = d.nTotal
            });
        }

        // POST: api/Pedidos/Crear
        //[Authorize(Roles = "Almacenero, Administrador")]
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] CrearViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            Pedido pedido = new Pedido
            {
                nIdUsuario = model.IdUsuario,
                nIdMesa = model.IdMesa,
                nNumeroPersonas = model.NumeroPersonas,
                dFechaPedido = DateTime.Now,
                sObservaciones = model.Observaciones,
                nSubTotal = model.SubTotal,
                nIgv = model.Igv,
                nTotal = model.Total,
                sEstado = "2",
                dUltimaFechaModifica = DateTime.Now

            };

            try
            {
                await _context.SaveChangesAsync();
                _context.Pedidos.Add(pedido);

                //var idpedido = pedido.nIdPedidoCabecera;

                int lastidpedido = _context.Pedidos.Max(p => p.nIdPedidoCabecera);

                foreach (var det in model.Detalles)
                {
                    PedidoDetalle detalle = new PedidoDetalle
                    {
                        nIdPedidoCabecera = lastidpedido + 1,
                        nSecuencia = det.Secuencia,
                        nIdProducto = det.IdProducto,
                        nCantidad = det.Cantidad,
                        nPrecioUnitario = det.PrecioUnitario,
                        nIGV = det.IGV,
                        nTotal = det.Total,
                        dFechaCreacion = DateTime.Now
                    };
                    _context.PedidosDetalles.Add(detalle);
                }
                await _context.SaveChangesAsync();

            }
            catch (Exception ex)
            {
                return BadRequest();
            }

            return Ok();
        }

        // PUT: api/Ingresos/Anular/1
        //[Authorize(Roles = "Almacenero, Administrador")]
        [HttpPut("[action]/{idPedido}")]
        public async Task<IActionResult> Anular([FromRoute] int idPedido)
        {

            if (idPedido <= 0)
            {
                return BadRequest();
            }

            var pedido = await _context.Pedidos.FirstOrDefaultAsync(p => p.nIdPedidoCabecera == idPedido);

            if (pedido == null)
            {
                return NotFound();
            }

            pedido.sEstado = "6";

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                //Guardar excepcion
                return BadRequest();
            }

            return Ok();
        }


        private bool PedidoExists(int id)
        {
            return _context.Pedidos.Any(e => e.nIdPedidoCabecera == id);
        }
    }
}
