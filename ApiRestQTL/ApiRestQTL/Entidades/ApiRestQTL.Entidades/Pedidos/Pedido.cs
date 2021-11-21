using ApiRestQTL.Entidades.Estados;
using ApiRestQTL.Entidades.Usuarios;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;
 

namespace ApiRestQTL.Entidades.Pedidos
{
    public class Pedido
    {
        public int nIdPedidoCabecera { get; set; }
        public int nIdUsuario { get; set; }
        public DateTime dFechaPedido { get; set; }
        public int nIdMesa { get; set; }
        public string sEstado { get; set; }
        public int nNumeroPersonas { get; set; }
        public string sObservaciones { get; set; }
        public decimal nSubTotal { get; set; }
        public decimal nIgv { get; set; }
        public decimal nTotal { get; set; }
        public DateTime dUltimaFechaModifica { get; set; }
        public ICollection<PedidoDetalle> detalles { get; set; }
        [ForeignKey("nIdUsuario")]
        public Usuario usuario { get; set; }
        [ForeignKey("sEstado")]
        public Estado estado { get; set; }
    }
}
