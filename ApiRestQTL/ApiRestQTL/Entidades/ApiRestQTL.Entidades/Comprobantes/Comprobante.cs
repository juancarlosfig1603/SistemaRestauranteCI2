using ApiRestQTL.Entidades.Clientes;
using ApiRestQTL.Entidades.Estados;
using ApiRestQTL.Entidades.Usuarios;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace ApiRestQTL.Entidades.Comprobantes
{
    public class Comprobante
    {
        public int nIdComprobanteCabecera { get; set; } 
        public string sCodigoComprobante { get; set; }
        public string sSerieComprobante { get; set; }
        public int nNumeroComprobante { get; set; }
        public DateTime dFechaEmision { get; set; }
        public int nIdPedidoCabecera { get; set; }
        public int nIdCliente { get; set; }
        public decimal nSubTotal { get; set; }
        public decimal nDsctoGlobal { get; set; }
        public decimal nValorVenta { get; set; }
        public decimal nIGV { get; set; }
        public decimal nTotal { get; set; }
        public decimal nPctjeDscto { get; set; }
        public decimal nPctjeIGV { get; set; }
        public string sEstado { get; set; }
        public DateTime dFechaCreacion { get; set; }
        public bool bEnvioSunat { get; set; }
        public int nIdUsuario { get; set; }
        public string sObservaciones { get; set; }
        public ICollection<ComprobanteDetalle> detalles { get; set; }
        [ForeignKey("sEstado")]
        public Estado estado { get; set; }
        [ForeignKey("nIdCliente")]
        public Cliente cliente { get; set; }
        [ForeignKey("sCodigoComprobante")]
        public ComprobanteTipo comprobanteTipo { get; set; }
        [ForeignKey("nIdUsuario")]
        public Usuario usuario { get; set; }
    }
}
