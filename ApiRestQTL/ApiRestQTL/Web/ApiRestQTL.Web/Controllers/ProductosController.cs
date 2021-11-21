using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ApiRestQTL.Datos;
using ApiRestQTL.Entidades.Productos;
using ApiRestQTL.Web.Models.Productos;
using System.Data;

namespace ApiRestQTL.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductosController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;

        public ProductosController(DbContextApiRestQTL context)
        {
            _context = context;
        }

        // GET: api/Productos/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<ProductoViewModel>> Listar()
        {
            var producto = await _context.Productos.ToListAsync();

            return producto.Select(p => new ProductoViewModel
            {
                IdProducto = p.nIdProducto,
                DescripcionProducto = p.sDescripcionProducto,
                TipoProducto = p.nTipoProducto,
                Estado = p.sEstado,
                PrecioUnitario = p.nPrecioUnitario,
                PrecioUnitarioIGV = p.nPrecioUnitarioIGV
            });

        }

        // GET: api/Productos/Mostrar/5
        [HttpGet("[action]/{id}")]
        public async Task<ActionResult<ProductoViewModel>> Mostrar(int id)
        {
            var producto = await _context.Productos.FindAsync(id);

            if (producto == null)
            {
                return NotFound();
            }

            return Ok(new ProductoViewModel
            {
                IdProducto = producto.nIdProducto,
                DescripcionProducto = producto.sDescripcionProducto,
                TipoProducto = producto.nTipoProducto,
                PrecioUnitario = producto.nPrecioUnitario,
                PrecioUnitarioIGV = producto.nPrecioUnitarioIGV,
                Estado = producto.sEstado
            }
            );
        }

        // GET: api/Productos/MostrarTipo/1
        [HttpGet("[action]/{idTipo}")]
        public async Task<IEnumerable<ProductoViewModel>> MostrarTipo(int idTipo)
        {
            var producto = await _context.Productos.Where(p => p.nTipoProducto == idTipo).ToListAsync();

            return producto.Select(p => new ProductoViewModel
            {
                IdProducto = p.nIdProducto,
                DescripcionProducto = p.sDescripcionProducto,
                TipoProducto = p.nTipoProducto,
                PrecioUnitario = p.nPrecioUnitario,
                PrecioUnitarioIGV = p.nPrecioUnitarioIGV,
                Estado = p.sEstado
            });
        }


        // PUT: api/Productos/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutProducto(int id, Producto producto)
        {
            if (id != producto.nIdProducto)
            {
                return BadRequest();
            }

            _context.Entry(producto).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ProductoExists(id))
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

        // POST: api/Productos
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<Producto>> PostProducto(Producto producto)
        {
            _context.Productos.Add(producto);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetProducto", new { id = producto.nIdProducto }, producto);
        }

        // DELETE: api/Productos/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Producto>> DeleteProducto(int id)
        {
            var producto = await _context.Productos.FindAsync(id);
            if (producto == null)
            {
                return NotFound();
            }

            _context.Productos.Remove(producto);
            await _context.SaveChangesAsync();

            return producto;
        }

        private bool ProductoExists(int id)
        {
            return _context.Productos.Any(e => e.nIdProducto == id);
        }
    }
}
