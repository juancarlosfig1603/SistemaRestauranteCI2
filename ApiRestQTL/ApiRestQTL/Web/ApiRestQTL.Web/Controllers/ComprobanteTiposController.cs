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
    public class ComprobanteTiposController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;

        public ComprobanteTiposController(DbContextApiRestQTL context)
        {
            _context = context;
        }

        

        // GET: api/ComprobanteTipos/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<ComprobanteTipoViewModel>> Listar()
        {
            var tipoComprobante = await _context.ComprobantesTipos.ToListAsync();

            return tipoComprobante.Select(t => new ComprobanteTipoViewModel
            {
                Codigo = t.sCodigoComprobante, 
                Descripcion = t.sDescripcionComprobante
            });
        }

        private bool ComprobanteTipoExists(string id)
        {
            return _context.ComprobantesTipos.Any(e => e.sCodigoComprobante == id);
        }
    }
}
