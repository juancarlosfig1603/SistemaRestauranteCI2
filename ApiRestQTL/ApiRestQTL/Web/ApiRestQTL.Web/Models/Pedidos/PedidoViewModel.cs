using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Pedidos
{
    public class PedidoViewModel
    {
        public int IdPedidoCabecera { get; set; }
        public int IdUsuario { get; set; }
        public string NombreUsuario { get; set; }
        public DateTime FechaPedido { get; set; }
        public int IdMesa { get; set; }
        public string Estado { get; set; }
        public string DescripcionEstado { get; set; }
        public int NumeroPersonas { get; set; }
        public string Observaciones { get; set; }
        public decimal SubTotal { get; set; }
        public decimal Igv { get; set; }
        public decimal Total { get; set; }
    }
}
