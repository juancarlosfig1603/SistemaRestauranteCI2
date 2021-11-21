using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ApiRestQTL.Datos;
using ApiRestQTL.Entidades.Usuarios;
using ApiRestQTL.Web.Models.Usuarios;
using System.Security.Claims;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.Extensions.Configuration;

namespace ApiRestQTL.Web.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UsuariosController : ControllerBase
    {
        private readonly DbContextApiRestQTL _context;
        private readonly IConfiguration _config;

        public UsuariosController(DbContextApiRestQTL context, IConfiguration config)
        {
            _context = context;
            _config = config;
        }

        // PUT: api/Usuarios/Login/
        [HttpPost("[action]")]
        public async Task<IActionResult> Login(LoginViewModel model)
        {
            var email = model.eMail.ToLower();
            var usuario = await _context.Usuarios.Where(u => u.sEstado == "1").FirstOrDefaultAsync(u => u.sEmail == email);

            if (usuario == null)
            {
                return NotFound();
            }

            if (!VerificarPasswordHash(model.Password, usuario.sPassword_hash, usuario.sPassword_salt))
            {
                return NotFound();
            }

            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.NameIdentifier, usuario.nIdUsuario.ToString()),
                new Claim(ClaimTypes.Email, email),
                new Claim(ClaimTypes.Role, usuario.sTipo.ToString()),
                new Claim("idusuario", usuario.nIdUsuario.ToString()),
                new Claim("rol", usuario.sTipo),
                new Claim("nombre", usuario.sNombre )
            };

            return Ok(
                    new { token = GenerarToken(claims) }
                );

        }


        // GET: api/Usuarios/Listar
        [HttpGet("[action]")]
        public async Task<IEnumerable<UsuarioViewModel>> Listar()
        {
            var usuario = await _context.Usuarios.Include(u => u.tipo).ToListAsync();

            return usuario.Select(u => new UsuarioViewModel
            {
                nIdUsuario = u.nIdUsuario,
                sTipo = u.sTipo,
                sDescripcionTipo = u.tipo.sDescripcionTipoUsuario,
                sEmail = u.sEmail,
                sEstado = u.sEstado,
                sNombre = u.sNombre,
                sLogin = u.sLogin,
                sPassword = u.sPassword,
                sPassword_hash = u.sPassword_hash
            });
        }

        //POST: api/Usuarios/Crear
        [HttpPost("[action]")]
        public async Task<IActionResult> Crear([FromBody] CrearViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var email = model.sEmail.ToLower();

            if (await _context.Usuarios.AnyAsync(u => u.sEmail == email))
            {
                return BadRequest("El email ya existe!");
            }

            CrearPasswordHash(model.sPassword, out byte[] passwordHash, out byte[] passwordSalt);

            Usuario usuario = new Usuario
            {
                sEmail = model.sEmail.ToLower(),
                sEstado = "1",
                sNombre = model.sNombre,
                sLogin = model.sLogin,
                sPassword = model.sPassword,
                sPassword_hash = passwordHash,
                sPassword_salt = passwordSalt,
                sTipo = model.sTipo,
                dFechaCreacion = DateTime.Today,
                dFechaUltimaActualiza = DateTime.Today
            };

            _context.Usuarios.Add(usuario);

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

        //PUT: api/Usuarios/Actualizar
        [HttpPost("[action]")]
        public async Task<IActionResult> Actualizar([FromBody] ActualizarViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (model.nIdUsuario <= 0)
            {
                return BadRequest();
            }

            var usuario = await _context.Usuarios.FirstOrDefaultAsync(u => u.nIdUsuario == model.nIdUsuario);

            if (usuario == null)
            {
                return NotFound();
            }

            usuario.sEmail = model.sEmail.ToLower();
            usuario.sEstado = model.sEstado;
            usuario.sNombre = model.sNombre;
            usuario.sLogin = model.sLogin;
            usuario.sPassword = model.sPassword;
            usuario.sTipo = model.sTipo;
            usuario.dFechaUltimaActualiza = DateTime.Today;

            if (model.act_Password == true)
            {
                CrearPasswordHash(model.sPassword, out byte[] passwordHash, out byte[] passwordSalt);

                usuario.sPassword_hash = passwordHash;
                usuario.sPassword_salt = passwordSalt;
            }

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

        //PUT: api/Usuarios/Activar/1
        [HttpPut("[action]/{id}")]
        public async Task<IActionResult> Activar([FromRoute] int id)
        {

            if (id <= 0)
            {
                return BadRequest();
            }

            var usuario = await _context.Usuarios.FirstOrDefaultAsync(u => u.nIdUsuario == id);

            if (usuario == null)
            {
                return NotFound();
            }

            usuario.sEstado = "1";

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

        //PUT: api/Usuarios/Desactivar/1
        [HttpPut("[action]/{id}")]
        public async Task<IActionResult> Desactivar([FromRoute] int id)
        {

            if (id <= 0)
            {
                return BadRequest();
            }

            var usuario = await _context.Usuarios.FirstOrDefaultAsync(u => u.nIdUsuario == id);

            if (usuario == null)
            {
                return NotFound();
            }

            usuario.sEstado = "0";

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

        private void CrearPasswordHash(string password, out byte[] passwordHash, out byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512())
            {
                passwordSalt = hmac.Key;
                passwordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));

            }
        }

        private bool VerificarPasswordHash(string password, byte[] passwordHashAlmacenado, byte[] passwordSalt)
        {
            using (var hmac = new System.Security.Cryptography.HMACSHA512(passwordSalt))
            {
                var passwordHashNuevo = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return new ReadOnlySpan<byte>(passwordHashAlmacenado).SequenceEqual(new ReadOnlySpan<byte>(passwordHashNuevo));
            }
        }

        private string GenerarToken(List<Claim> claims)
        {
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

            var token = new JwtSecurityToken(
              _config["Jwt:Issuer"],
              _config["Jwt:Issuer"],
              expires: DateTime.Now.AddMinutes(30),
              signingCredentials: creds,
              claims: claims);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }

        private bool UsuarioExists(int id)
        {
            return _context.Usuarios.Any(e => e.nIdUsuario == id);
        }
    }
}
