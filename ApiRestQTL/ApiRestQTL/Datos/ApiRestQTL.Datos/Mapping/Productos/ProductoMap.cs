using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using ApiRestQTL.Entidades.Productos;


namespace ApiRestQTL.Datos.Mapping.Productos
{
    public class ProductoMap : IEntityTypeConfiguration<Producto>
    {
        public void Configure(EntityTypeBuilder<Producto> builder)
        {
            builder.ToTable("Productos").HasKey(p => p.nIdProducto);
        }
    }
}
