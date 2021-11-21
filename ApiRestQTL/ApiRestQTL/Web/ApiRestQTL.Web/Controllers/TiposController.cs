using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ApiRestQTL.Datos;
using ApiRestQTL.Entidades.Usuarios;
using ApiRestQTL.Web.Models.Usuarios.Tipos;

namespace ApiRestQTL.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TiposController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;

        public TiposController(DbContextApiRestQTL context)
        {
            _context = context;
        }

        // GET: api/Tipos/Select
        [HttpGet("[action]")]
        public async Task<IEnumerable<SelectViewModel>> Select()
        {
            var tipo = await _context.Tipos.ToListAsync();

            return tipo.Select(t => new SelectViewModel
            {
                sTipoUsuario = t.sTipoUsuario,
                sDescripcionTipoUsuario = t.sDescripcionTipoUsuario
            });
        }

        private bool TipoExists(string id)
        {
            return _context.Tipos.Any(e => e.sTipoUsuario == id);
        }
    }
}
