using ApiRestQTL.Entidades.Pedidos;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace ApiRestQTL.Entidades.Usuarios
{
    public class Usuario
    {
        public int nIdUsuario { get; set; }
        [Required]
        [StringLength(200, MinimumLength = 3, ErrorMessage = "El nombre debe tener como minimo 3 caracteres y maximo 200")]
        public string sNombre { get; set; }
        public string sLogin { get; set; }
        public string sPassword { get; set; }
        [Required]
        public string sTipo { get; set; }
        public string sEstado { get; set; }
        [Required]
        public string sEmail { get; set; }
        public DateTime dFechaCreacion { get; set; }
        public DateTime dFechaUltimaActualiza { get; set; }
        [Required]
        public byte[] sPassword_hash { get; set; }
        [Required]
        public byte[] sPassword_salt { get; set; }
        public ICollection<Pedido> pedidos { get; set; }
        [ForeignKey("sTipo")]
        public Tipo tipo { get; set; }

    }
}
