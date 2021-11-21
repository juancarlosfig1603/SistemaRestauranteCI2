using ApiRestQTL.Entidades.Comprobantes;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ApiRestQTL.Datos.Mapping.Comprobantes
{
    public class ComprobanteDetalleMap : IEntityTypeConfiguration<ComprobanteDetalle>
    {
        public void Configure(EntityTypeBuilder<ComprobanteDetalle> builder)
        {
            builder.ToTable("ComprobanteDetalle").HasKey(d => d.nIdComprobanteDetalle);
        }
    }
}
