using ApiRestQTL.Entidades.Productos;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ApiRestQTL.Entidades.Pedidos
{
    public class PedidoDetalle
    {
        public int nIdPedidoDetalle { get; set; }        
        [Required]
        public int nIdPedidoCabecera { get; set; }
        public int nSecuencia { get; set; }
        [Required]        
        public int nIdProducto { get; set; }
        [Required]
        public int nCantidad { get; set; }
        public decimal nPrecioUnitario { get; set; }
        public decimal nSubTotal { get; set; }
        public decimal nIGV { get; set; }
        public decimal nTotal { get; set; }
        public DateTime dFechaCreacion { get; set; }
        [ForeignKey("nIdPedidoCabecera")]
        public Pedido pedido { get; set; }
        [ForeignKey("nIdProducto")]
        public Producto producto { get; set; }


    }
}
