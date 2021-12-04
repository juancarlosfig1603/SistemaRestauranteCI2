using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Comprobantes
{
    public class ComprobanteViewModel
    {
        public int IdComprobante { get; set; }
        public string Tipo { get; set; }
        public string Descripcion { get; set; }
        public string Serie { get; set; }
        public int Correlativo { get; set; }
        public DateTime FechaEmision { get; set; }
        public int IdPedido { get; set; }
        public int IdCliente { get; set; }
        public string RucDni { get; set; }
        public string NombreCliente { get; set; }
        public decimal SubTotal { get; set; }
        public decimal DsctoGlobal { get; set; }
        public decimal ValorVenta { get; set; }
        public decimal IGV { get; set; }
        public decimal Total { get; set; }
        public decimal PctjeDscto { get; set; }
        public decimal PctjeIGV { get; set; }
        public string Estado { get; set; }
        public string DescripcionEstado { get; set; }
        public bool EnvioSunat { get; set; }
        public int IdUsuario { get; set; }
        public string Observaciones { get; set; }

        public List<ComprobanteDetalleViewModel> Detalles { get; set; }
    }
}
