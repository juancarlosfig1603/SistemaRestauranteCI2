using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Usuarios
{
    public class ActualizarViewModel
    {
     
        [Required]
        public int nIdUsuario { get; set; }
        [Required]
        public string sNombre { get; set; }
        [Required]
        public string sLogin { get; set; }
        public string sPassword { get; set; }
        [Required]
        public string sTipo { get; set; }
        public string sEstado { get; set; }
        [Required]
        [EmailAddress]
        public string sEmail { get; set; }
        public string sPassword_hash { get; set; }
        public DateTime dFechaUltimaActualiza { get; set; }
        public bool act_Password { get; set; }

    }
}
