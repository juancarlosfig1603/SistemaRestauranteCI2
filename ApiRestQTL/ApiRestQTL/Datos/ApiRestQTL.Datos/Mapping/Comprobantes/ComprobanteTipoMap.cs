using ApiRestQTL.Entidades.Comprobantes;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApiRestQTL.Datos.Mapping.Comprobantes
{
    public class ComprobanteTipoMap : IEntityTypeConfiguration<ComprobanteTipo>
    {
        public void Configure(EntityTypeBuilder<ComprobanteTipo> builder)
        {
            builder.ToTable("TipoComprobante").HasKey(t => t.sCodigoComprobante);
        }
    }
}
