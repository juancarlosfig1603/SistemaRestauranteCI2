using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
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

        // GET: api/Clientes/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Cliente>> GetCliente(int id)
        {
            var cliente = await _context.Clientes.FindAsync(id);

            if (cliente == null)
            {
                return NotFound();
            }

            return cliente;
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



        // PUT: api/Clientes/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCliente(int id, Cliente cliente)
        {
            if (id != cliente.nIdCliente)
            {
                return BadRequest();
            }

            _context.Entry(cliente).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ClienteExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Clientes
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Cliente>> PostCliente(Cliente cliente)
        {
            _context.Clientes.Add(cliente);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCliente", new { id = cliente.nIdCliente }, cliente);
        }

        // DELETE: api/Clientes/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Cliente>> DeleteCliente(int id)
        {
            var cliente = await _context.Clientes.FindAsync(id);
            if (cliente == null)
            {
                return NotFound();
            }

            _context.Clientes.Remove(cliente);
            await _context.SaveChangesAsync();

            return cliente;
        }

        private bool ClienteExists(int id)
        {
            return _context.Clientes.Any(e => e.nIdCliente == id);
        }
    }
}
