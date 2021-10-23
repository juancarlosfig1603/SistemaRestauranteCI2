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
    public class DepartamentosController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;

        public DepartamentosController(DbContextApiRestQTL context)
        {
            _context = context;
        }

        
        // GET: api/Departamentos/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<DepartamentoViewModel>> Listar()
        {
            var departamento = await _context.Departamentos.ToListAsync();

            return departamento.Select(d => new DepartamentoViewModel
            {
                sIdDepartamento = d.sIdDepartamento,
                sDesDepartamento = d.sDesDepartamento
            });
        }


        // GET: api/Departamentos/Mostrar/15
        [HttpGet("[action]/{id}")]
        public async Task<IActionResult> Mostrar(string id)
        {
            var departamento = await _context.Departamentos.FindAsync(id);

            if (departamento == null)
            {
                return NotFound();
            }

            return Ok(new DepartamentoViewModel
            {
                sIdDepartamento = departamento.sIdDepartamento,
                sDesDepartamento = departamento.sDesDepartamento
            }
            );
        }

        // PUT: api/Departamentos/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutDepartamento(string id, Departamento departamento)
        {
            if (id != departamento.sIdDepartamento)
            {
                return BadRequest();
            }

            _context.Entry(departamento).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DepartamentoExists(id))
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

        // POST: api/Departamentos
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Departamento>> PostDepartamento(Departamento departamento)
        {
            _context.Departamentos.Add(departamento);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (DepartamentoExists(departamento.sIdDepartamento))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetDepartamento", new { id = departamento.sIdDepartamento }, departamento);
        }

        // DELETE: api/Departamentos/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Departamento>> DeleteDepartamento(string id)
        {
            var departamento = await _context.Departamentos.FindAsync(id);
            if (departamento == null)
            {
                return NotFound();
            }

            _context.Departamentos.Remove(departamento);
            await _context.SaveChangesAsync();

            return departamento;
        }

        private bool DepartamentoExists(string id)
        {
            return _context.Departamentos.Any(e => e.sIdDepartamento == id);
        }
    }
}
