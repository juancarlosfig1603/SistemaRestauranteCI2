using ApiRestQTL.Entidades.Comprobantes;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApiRestQTL.Datos.Mapping.Comprobantes
{
    public class ComprobanteMap : IEntityTypeConfiguration<Comprobante>
    {
        public void Configure(EntityTypeBuilder<Comprobante> builder)
        {
            builder.ToTable("ComprobanteCabecera").HasKey(c => c.nIdComprobanteCabecera); 
        }
    }
}
