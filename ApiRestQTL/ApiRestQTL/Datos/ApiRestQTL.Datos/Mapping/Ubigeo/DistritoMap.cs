using ApiRestQTL.Entidades.Ubigeo;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApiRestQTL.Datos.Mapping.Ubigeo
{
    class DistritoMap : IEntityTypeConfiguration<Distrito>
    {
        public void Configure(EntityTypeBuilder<Distrito> builder)
        {
            builder.ToTable("UbiDistrito").HasKey(d => d.sIdDistrito);
        }
    }
}
