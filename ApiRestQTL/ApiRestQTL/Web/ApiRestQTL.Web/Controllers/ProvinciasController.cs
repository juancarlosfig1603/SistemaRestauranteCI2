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
using ApiRestQTL.Web.Models.Ubigeo.Provincia;

namespace ApiRestQTL.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProvinciasController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;

        public ProvinciasController(DbContextApiRestQTL context)
        {
            _context = context;
        }

        // GET: api/Provincias/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<ProvinciaViewModel>> Listar()
        {
            //return await _context.Provincias.ToListAsync();
            var provincia = await _context.Provincias.ToListAsync();

            return provincia.Select(p => new ProvinciaViewModel
            {
                sIdProvincia = p.sIdProvincia,
                sDesProvincia = p.sDesProvincia,
                sIdDepartamento = p.sIdDepartamento
            });
        }

        // GET: api/Provincias/Mostrar/1503
        [HttpGet("[action]/{id}")]
        public async Task<ActionResult<ProvinciaViewModel>> Mostrar(string id)
        {
            var provincia = await _context.Provincias.FindAsync(id);

            if (provincia == null)
            {
                return NotFound();
            }

            return Ok(new ProvinciaViewModel
            {
                sIdProvincia = provincia.sIdProvincia,
                sDesProvincia = provincia.sDesProvincia,
                sIdDepartamento = provincia.sIdDepartamento
            }
            );
        }

        // GET: api/Provincias/Select/15
        [HttpGet("[action]/{id}")]
        public async Task<IEnumerable<SelectViewModel>> Select(string id)
        {
            var provincia = await _context.Provincias.Where(p => p.sIdDepartamento == id).ToListAsync();

            return provincia.Select(p => new SelectViewModel
            {
                sIdProvincia = p.sIdProvincia,
                sDesProvincia = p.sDesProvincia
            });
        }



        // PUT: api/Provincias/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutProvincia(string id, Provincia provincia)
        {
            if (id != provincia.sIdProvincia)
            {
                return BadRequest();
            }

            _context.Entry(provincia).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ProvinciaExists(id))
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

        // POST: api/Provincias
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Provincia>> PostProvincia(Provincia provincia)
        {
            _context.Provincias.Add(provincia);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (ProvinciaExists(provincia.sIdProvincia))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetProvincia", new { id = provincia.sIdProvincia }, provincia);
        }

        // DELETE: api/Provincias/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Provincia>> DeleteProvincia(string id)
        {
            var provincia = await _context.Provincias.FindAsync(id);
            if (provincia == null)
            {
                return NotFound();
            }

            _context.Provincias.Remove(provincia);
            await _context.SaveChangesAsync();

            return provincia;
        }

        private bool ProvinciaExists(string id)
        {
            return _context.Provincias.Any(e => e.sIdProvincia == id);
        }
    }
}
