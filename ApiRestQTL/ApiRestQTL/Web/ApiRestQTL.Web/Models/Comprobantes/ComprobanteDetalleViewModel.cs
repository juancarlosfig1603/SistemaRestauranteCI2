using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Comprobantes
{
    public class ComprobanteDetalleViewModel
    {
        public int IdComprobanteDetalle { get; set; }
        public int IdComprobanteCabecera { get; set; }
        public int Secuencia { get; set; }
        public int IdProducto { get; set; }
        public string DescripcionProducto { get; set; }
        public decimal Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal PrecioUnitarioIGV { get; set; }
        public decimal SubTotal { get; set; }
        public decimal IGV { get; set; }
        public decimal Total { get; set; }
        public decimal PctjeIGV { get; set; }
    }
}
