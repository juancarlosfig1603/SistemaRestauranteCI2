using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Clientes
{
    public class CrearViewModel
    {
        public string sNombreCliente { get; set; }
        public string sCodigoDocumento { get; set; }
        public string sNumeroDocumento { get; set; }
        public string sDireccionCliente { get; set; }
        public string sIdDepartamento { get; set; }
        public string sIdProvincia { get; set; }
        public string sIdDistrito { get; set; }
        public string sNumeroTelefono { get; set; }
        public string sNumeroCelular { get; set; }
        public string sEmail { get; set; }
        public string sObservacion { get; set; }
    }
}
