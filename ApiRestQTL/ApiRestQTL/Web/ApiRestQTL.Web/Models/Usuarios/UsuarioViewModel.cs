using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Usuarios
{
    public class UsuarioViewModel
    {
        public int nIdUsuario { get; set; }
        public string sNombre { get; set; }
        public string sLogin { get; set; }
        public string sPassword { get; set; }
        public string sTipo { get; set; }
        public string sDescripcionTipo { get; set; }
        public string sEstado { get; set; }
        public string sEmail { get; set; }
        public byte[] sPassword_hash { get; set; }

    }
}
