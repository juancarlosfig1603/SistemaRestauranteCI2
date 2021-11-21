using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Pedidos
{
    public class PedidoDetalleViewModel
    {
        public int IdPedidoDetalle { get; set; }
        public int IdPedidoCabecera { get; set; }
        public int Secuencia { get; set; }
        public int IdProducto { get; set; }
        public string Producto { get; set; }
        public int Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal SubTotal { get; set; }
        public decimal IGV { get; set; }
        public decimal Total { get; set; }
    }
}
