using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Clientes
{
    public class ActualizarViewModel
    {

        [Required]
        public int nIdCliente { get; set; }
        [Required]
        public string sNombreCliente { get; set; }
        [Required]
        public string sCodigoDocumento { get; set; }
        [Required]
        public string sNumeroDocumento { get; set; }
        public string sDireccionCliente { get; set; }
        public string sIdDepartamento { get; set; }
        public string sIdProvincia { get; set; }
        public string sIdDistrito { get; set; }
        public string sNumeroTelefono { get; set; }
        public string sNumeroCelular { get; set; }
        public string sEmail { get; set; }
        public string sObservacion { get; set; }
        public DateTime dFechaUltimaActualiza { get; set; }
    }
}
