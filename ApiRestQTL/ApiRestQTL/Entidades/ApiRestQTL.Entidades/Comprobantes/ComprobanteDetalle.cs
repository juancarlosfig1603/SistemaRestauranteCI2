using ApiRestQTL.Entidades.Productos;
using System;

using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace ApiRestQTL.Entidades.Comprobantes
{
    public class ComprobanteDetalle
    {
        public int nIdComprobanteDetalle { get; set; } 
        public int nIdComprobanteCabecera { get; set; }
        public int nSecuencia { get; set; } 
        public int nIdProducto { get; set; }
        public decimal nCantidad { get; set; }
        public decimal nPrecioUnitario { get; set; }
        public decimal nPrecioUnitarioIGV { get; set; }
        public decimal nSubTotal { get; set; } 
        public decimal nIGV { get; set; }
        public decimal nTotal { get; set; }
        public decimal nPctjeIGV { get; set; }
        [ForeignKey("nIdProducto")]
        public Producto producto { get; set; }
        [ForeignKey("nIdComprobanteCabecera")]
        public Comprobante comprobante { get; set; }

    }
}
