using ApiRestQTL.Entidades.Ubigeo;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApiRestQTL.Datos.Mapping.Ubigeo
{
    class DepartamentoMap : IEntityTypeConfiguration<Departamento>

    {
        public void Configure(EntityTypeBuilder<Departamento> builder)
        {
            builder.ToTable("UbiDepartamento").HasKey(d => d.sIdDepartamento);
        }
    }
}
