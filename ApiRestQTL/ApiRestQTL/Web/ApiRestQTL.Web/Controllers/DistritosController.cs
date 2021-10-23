using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ApiRestQTL.Datos;
using ApiRestQTL.Entidades.Ubigeo;
using ApiRestQTL.Web.Models.Ubigeo;

namespace ApiRestQTL.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DistritosController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;

        public DistritosController(DbContextApiRestQTL context)

        {
            _context = context;
        }

        // GET: api/Distritos/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<DistritoViewModel>> Listar()
        {
            var distrito = await _context.Distritos.ToListAsync();

            return distrito.Select(d => new DistritoViewModel
            {
                sIdDistrito = d.sIdDistrito,
                sDesDistrito = d.sDesDistrito,
                sIdProvincia = d.sIdProvincia
            });
        }

        // GET: api/Distritos/Mostrar/150312
        [HttpGet("[action]/{id}")]
        public async Task<ActionResult<DistritoViewModel>> Mostrar(string id)
        {
            var distrito = await _context.Distritos.FindAsync(id);

            if (distrito == null)
            {
                return NotFound();
            }

            return Ok(new DistritoViewModel
            {
                sIdDistrito = distrito.sIdDistrito,
                sDesDistrito = distrito.sDesDistrito,
                sIdProvincia = distrito.sIdProvincia            }
            );
        }

        // PUT: api/Distritos/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutDistrito(string id, Distrito distrito)
        {
            if (id != distrito.sIdDistrito)
            {
                return BadRequest();
            }

            _context.Entry(distrito).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DistritoExists(id))
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

        // POST: api/Distritos
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Distrito>> PostDistrito(Distrito distrito)
        {
            _context.Distritos.Add(distrito);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (DistritoExists(distrito.sIdDistrito))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetDistrito", new { id = distrito.sIdDistrito }, distrito);
        }

        // DELETE: api/Distritos/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Distrito>> DeleteDistrito(string id)
        {
            var distrito = await _context.Distritos.FindAsync(id);
            if (distrito == null)
            {
                return NotFound();
            }

            _context.Distritos.Remove(distrito);
            await _context.SaveChangesAsync();

            return distrito;
        }

        private bool DistritoExists(string id)
        {
            return _context.Distritos.Any(e => e.sIdDistrito == id);
        }
    }
}
