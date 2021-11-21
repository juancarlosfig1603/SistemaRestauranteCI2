using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRestQTL.Web.Models.Productos
{
    public class ProductoViewModel
    {
        public int IdProducto { get; set; }
        public string DescripcionProducto { get; set; }
        public string Estado { get; set; }
        public int TipoProducto { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal PrecioUnitarioIGV { get; set; }

    }
}
