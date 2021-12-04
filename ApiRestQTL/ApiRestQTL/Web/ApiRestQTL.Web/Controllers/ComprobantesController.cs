using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ApiRestQTL.Datos;
using ApiRestQTL.Entidades.Comprobantes;
using ApiRestQTL.Web.Models.Comprobantes;

namespace ApiRestQTL.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ComprobantesController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;

        public ComprobantesController(DbContextApiRestQTL context)
        {
            _context = context;
        }

        // GET: api/Comprobantes/Listar
        //  [Authorize(Roles = "Almacenero, Administrador")]
        [HttpGet("[action]")]
        public async Task<IEnumerable<ComprobanteViewModel>> Listar()
        {
            var comprobante = await _context.Comprobantes
                .Include(c => c.cliente)
                .Include(e => e.estado)
                .Include(t => t.comprobanteTipo)
                .OrderByDescending(c => c.nIdComprobanteCabecera)
                .Take(100)
                .ToListAsync();

            return comprobante.Select(c => new ComprobanteViewModel

            {
                IdComprobante = c.nIdComprobanteCabecera,
                Tipo = c.sCodigoComprobante,
                Descripcion = c.comprobanteTipo.sDescripcionComprobante,
                Serie = c.sSerieComprobante,
                Correlativo = c.nNumeroComprobante,
                FechaEmision = c.dFechaEmision,
                IdPedido = c.nIdPedidoCabecera,
                IdCliente = c.nIdCliente,
                RucDni = c.cliente.sNumeroDocumento,
                NombreCliente = c.cliente.sNombreCliente,
                SubTotal = c.nSubTotal,
                DsctoGlobal = c.nDsctoGlobal,
                ValorVenta = c.nValorVenta,
                IGV = c.nIGV,
                Total = c.nTotal,
                PctjeDscto = c.nPctjeDscto,
                PctjeIGV = c.nPctjeIGV,
                Estado = c.sEstado,
                DescripcionEstado = c.estado.sDescripcionEstado,
                EnvioSunat = c.bEnvioSunat
            }); ;
        }

        // GET: api/Comprobantes/Mostrar
        //  [Authorize(Roles = "Almacenero, Administrador")]
        [HttpGet("[action]/{idComprobante}")]
        public async Task<IEnumerable<ComprobanteViewModel>> Mostrar([FromRoute] int idComprobante)
        {

            var comprobante = await _context.Comprobantes
                .Include(c => c.cliente)
                .Include(e => e.estado)
                .Include(t => t.comprobanteTipo)
                .Where(c => c.nIdComprobanteCabecera == idComprobante)
                .OrderByDescending(c => c.nIdComprobanteCabecera)
                .ToListAsync();

            return comprobante.Select(c => new ComprobanteViewModel

            {
                IdComprobante = c.nIdComprobanteCabecera,
                Tipo = c.sCodigoComprobante,
                Descripcion = c.comprobanteTipo.sDescripcionComprobante,
                Serie = c.sSerieComprobante,
                Correlativo = c.nNumeroComprobante,
                FechaEmision = c.dFechaEmision,
                IdPedido = c.nIdPedidoCabecera,
                IdCliente = c.nIdCliente,
                RucDni = c.cliente.sNumeroDocumento,
                NombreCliente = c.cliente.sNombreCliente,
                SubTotal = c.nSubTotal,
                DsctoGlobal = c.nDsctoGlobal,
                ValorVenta = c.nValorVenta,
                IGV = c.nIGV,
                Total = c.nTotal,
                PctjeDscto = c.nPctjeDscto,
                PctjeIGV = c.nPctjeIGV,
                Estado = c.sEstado,
                DescripcionEstado = c.estado.sDescripcionEstado,
                EnvioSunat = c.bEnvioSunat
            }); ;

        }


        // GET: api/Comprobantes/ListarDetalles
        //[Authorize(Roles = "Almacenero, Administrador")]
        [HttpGet("[action]/{idComprobante}")]
        public async Task<IEnumerable<ComprobanteDetalleViewModel>> ListarDetalles([FromRoute] int idComprobante)
        {
            var detalle = await _context.ComprobantesDetalles
                .Include(p => p.producto)
                .Where(d => d.nIdComprobanteCabecera == idComprobante)
                .ToListAsync();

            return detalle.Select(d => new ComprobanteDetalleViewModel

            {
                IdComprobanteDetalle = d.nIdComprobanteDetalle,
                IdComprobanteCabecera = d.nIdComprobanteCabecera,
                Secuencia = d.nSecuencia,
                IdProducto = d.nIdProducto,
                DescripcionProducto = d.producto.sDescripcionProducto,
                Cantidad = d.nCantidad,
                PrecioUnitario = d.nPrecioUnitario,
                PrecioUnitarioIGV = d.nPrecioUnitarioIGV,
                SubTotal = d.nSubTotal,
                PctjeIGV = d.nPctjeIGV,
                IGV = d.nIGV,
                Total = d.nTotal
            });
        }


        // POST: api/Comprobantes/Crear
        //[Authorize(Roles = "Almacenero, Administrador")]
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] ComprobanteViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            int LastCorrelativo = _context.Comprobantes.Max(c => c.nNumeroComprobante);

            Comprobante comprobante = new Comprobante
            {
              
                sCodigoComprobante = model.Tipo,
                sSerieComprobante = model.Serie,
                nNumeroComprobante = LastCorrelativo + 1, //model.Correlativo,
                dFechaEmision = DateTime.Today,
                nIdPedidoCabecera = model.IdPedido,
                nIdCliente = model.IdCliente,
                nSubTotal = model.SubTotal,
                nDsctoGlobal = model.DsctoGlobal,
                nValorVenta = model.ValorVenta,
                nIGV = model.IGV,
                nTotal = model.Total,
                nPctjeDscto = model.PctjeDscto,
                nPctjeIGV = model.PctjeIGV,
                sEstado = "2",
                dFechaCreacion = DateTime.Now,
                bEnvioSunat = false,
                nIdUsuario = model.IdUsuario,
                sObservaciones = model.Observaciones                                

            };

            try
            {
                
                _context.Comprobantes.Add(comprobante);
                await _context.SaveChangesAsync();

                var idcomprobante = comprobante.nIdComprobanteCabecera;

                //int LastIdComprobante = _context.Comprobantes.Max(c => c.nIdComprobanteCabecera);

                foreach (var det in model.Detalles)
                {
                    ComprobanteDetalle detalle = new ComprobanteDetalle
                    {
                        nIdComprobanteCabecera = idcomprobante,
                        nSecuencia = det.Secuencia,
                        nIdProducto = det.IdProducto,
                        nCantidad = det.Cantidad,
                        nPrecioUnitario = det.PrecioUnitario,
                        nPrecioUnitarioIGV = det.PrecioUnitarioIGV,
                        nSubTotal = det.SubTotal,
                        nIGV = det.IGV,
                        nTotal = det.Total,
                        nPctjeIGV = det.PctjeIGV                        
                    };
                    _context.ComprobantesDetalles.Add(detalle);
                }
                await _context.SaveChangesAsync();

            }
            catch (Exception ex)
            {
                return BadRequest();
            }

            return Ok();
        }

        // PUT: api/Comprobantes/Anular/1
        //[Authorize(Roles = "Almacenero, Administrador")]
        [HttpPut("[action]/{idComprobante}")]
        public async Task<IActionResult> Anular([FromRoute] int idComprobante)
        {

            if (idComprobante <= 0)
            {
                return BadRequest();
            }

            var comprobante = await _context.Comprobantes.FirstOrDefaultAsync(c => c.nIdComprobanteCabecera == idComprobante);

            if (comprobante == null)
            {
                return NotFound();
            }

            comprobante.sEstado = "6";

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






        private bool ComprobanteExists(int id)
        {
            return _context.Comprobantes.Any(e => e.nIdComprobanteCabecera == id);
        }
    }
}
