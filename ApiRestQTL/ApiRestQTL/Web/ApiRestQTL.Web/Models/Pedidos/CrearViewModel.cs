using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Pedidos
{
    public class CrearViewModel
    {
        public int IdUsuario { get; set; }
        public DateTime FechaPedido { get; set; }
        public int IdMesa { get; set; }
        public int NumeroPersonas { get; set; }
        public string Observaciones { get; set; }
        public decimal SubTotal { get; set; }
        public decimal Igv { get; set; }
        public decimal Total { get; set; }
        [Required]
        public List <PedidoDetalleViewModel> Detalles { get; set; }

    }
}
