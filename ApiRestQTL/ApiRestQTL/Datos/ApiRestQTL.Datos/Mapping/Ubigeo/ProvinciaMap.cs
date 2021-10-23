using Microsoft.EntityFrameworkCore;
using System;
using ApiRestQTL.Entidades.Ubigeo;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ApiRestQTL.Datos.Mapping.Ubigeo
{
    class ProvinciaMap : IEntityTypeConfiguration<Provincia>
    {
        public void Configure(EntityTypeBuilder<Provincia> builder)
        {
            builder.ToTable("UbiProvincia").HasKey(p => p.sIdProvincia);
        }
    }
}
