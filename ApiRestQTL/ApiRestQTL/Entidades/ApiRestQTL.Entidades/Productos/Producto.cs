using System;
using System.ComponentModel.DataAnnotations;

namespace ApiRestQTL.Entidades.Productos
{
    public class Producto
    {
        [Key]
        public int nIdProducto { get; set; }
        [Required]
        public string sDescripcionProducto { get; set; }
        public DateTime dFechaRegistro { get; set; }
        public string sEstado { get; set; }
        public int nTipoProducto { get; set; }
        public string sUnidadMedida { get; set; }
        public string sCodigoProductoSunat { get; set; }
        public string sObservaciones { get; set; }
        public decimal nPrecioUnitario { get; set; }
        public decimal nPrecioUnitarioIGV { get; set; }
        public DateTime dFechaUltimaActualiza { get; set; }

    }
}
