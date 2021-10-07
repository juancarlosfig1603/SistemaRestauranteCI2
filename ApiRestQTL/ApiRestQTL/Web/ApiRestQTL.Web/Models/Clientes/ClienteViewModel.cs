using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Clientes
{
    public class ClienteViewModel
    {
        public int IdCliente { get; set; }
        public string NombreCliente { get; set; }
        public string CodigoDocumento { get; set; }
        public string NumeroDocumento { get; set; }
        public string DireccionCliente { get; set; }
        public string IdDepartamento { get; set; }
        public string IdProvincia { get; set; }
        public string IdDistrito { get; set; }
        public string NumeroTelefono { get; set; }
        public string NumeroCelular { get; set; }
        public string Email { get; set; }
        public string Observacion { get; set; }
        public string Estado { get; set; }
    }
}
