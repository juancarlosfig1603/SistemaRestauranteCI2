using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ApiRestQTL.Datos;
using ApiRestQTL.Entidades.Clientes;
using ApiRestQTL.Web.Models.Clientes;

namespace ApiRestQTL.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClientesController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;

        public ClientesController(DbContextApiRestQTL context)
        {
            _context = context;
        }

        // GET: api/Clientes/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<ClienteViewModel>> Listar()
        {
            var cliente = await _context.Clientes.ToListAsync();

            return cliente.Select(c => new ClienteViewModel
            {
                IdCliente = c.nIdCliente,
                NombreCliente = c.sNombreCliente,
                CodigoDocumento = c.sCodigoDocumento,
                NumeroDocumento = c.sNumeroDocumento,
                DireccionCliente = c.sDireccionCliente,
                IdDepartamento = c.sIdDepartamento,
                IdProvincia = c.sIdProvincia,
                IdDistrito = c.sIdDistrito,
                NumeroTelefono = c.sNumeroTelefono,
                NumeroCelular = c.sNumeroCelular,
                Email = c.sEmail,
                Observacion = c.sObservacion,
                Estado = c.sEstado
            });
        }


        // GET: api/Clientes/Mostrar/5
        [HttpGet("[action]/{id}")]
        public async Task<IActionResult> Mostrar(int id)
        {
            var cliente = await _context.Clientes.FindAsync(id);

            if (cliente == null)
            {
                return NotFound();
            }

            return Ok(new ClienteViewModel
            {
                IdCliente = cliente.nIdCliente,
                NombreCliente = cliente.sNombreCliente,
                CodigoDocumento = cliente.sCodigoDocumento,
                NumeroDocumento = cliente.sNumeroDocumento,
                DireccionCliente = cliente.sDireccionCliente,
                IdDepartamento = cliente.sIdDepartamento,
                IdProvincia = cliente.sIdProvincia,
                IdDistrito = cliente.sIdDistrito,
                NumeroTelefono = cliente.sNumeroTelefono,
                NumeroCelular = cliente.sNumeroCelular,
                Email = cliente.sEmail,
                Observacion = cliente.sObservacion,
                Estado = cliente.sEstado
            }
            );
        }

        //POST: api/Clientes/Crear
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] CrearViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            Cliente cliente = new Cliente
            {
                sEmail = model.sEmail,
                sEstado = "1",
                sCodigoDocumento = model.sCodigoDocumento,
                sDireccionCliente = model.sDireccionCliente,
                sIdDepartamento = model.sIdDepartamento,
                sIdProvincia = model.sIdProvincia,
                sIdDistrito = model.sIdDistrito,
                sObservacion = model.sObservacion,
                sNumeroCelular = model.sNumeroCelular,
                sNumeroTelefono = model.sNumeroTelefono,
                sNumeroDocumento = model.sNumeroDocumento,
                sNombreCliente = model.sNombreCliente,
                dFechaCreacion = DateTime.Today,
                dFechaUltimaActualiza = DateTime.Today
            };

            _context.Clientes.Add(cliente);
            try
            {
                await _context.SaveChangesAsync();
            }

            catch (Exception ex)
            {

                return BadRequest();
            }

            return Ok();
        }


        //PUT: api/Clientes/Actualizar
        [HttpPut("[action]")]
        public async Task<IActionResult> Actualizar([FromBody] ActualizarViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (model.nIdCliente <= 0)
            {
                return BadRequest();
            }

            var cliente = await _context.Clientes.FirstOrDefaultAsync(c => c.nIdCliente == model.nIdCliente);

            if (cliente == null)
            {
                return NotFound();
            }

            cliente.sEmail = model.sEmail.ToLower();
            cliente.sNombreCliente = model.sNombreCliente;
            cliente.sNumeroCelular = model.sNumeroCelular;
            cliente.sNumeroDocumento = model.sNumeroDocumento;
            cliente.sNumeroTelefono = model.sNumeroTelefono;
            cliente.sIdDepartamento = model.sIdDepartamento;
            cliente.sIdProvincia = model.sIdProvincia;
            cliente.sIdDistrito = model.sIdDistrito;
            cliente.sCodigoDocumento = model.sCodigoDocumento;
            cliente.sDireccionCliente = model.sDireccionCliente;
            cliente.sObservacion = model.sObservacion;
            cliente.dFechaUltimaActualiza = DateTime.Today;            

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                return BadRequest();
            }

            return Ok();
        }
        private bool ClienteExists(int id)
        {
            return _context.Clientes.Any(e => e.nIdCliente == id);
        }
    }
}
