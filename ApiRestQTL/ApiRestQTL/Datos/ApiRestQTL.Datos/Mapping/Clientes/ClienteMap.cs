using Microsoft.EntityFrameworkCore;
using ApiRestQTL.Entidades.Clientes;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;

namespace ApiRestQTL.Datos.Mapping.Clientes
{
    public class ClienteMap : IEntityTypeConfiguration<Cliente>
    {
        public void Configure(EntityTypeBuilder<Cliente> builder)
        {
            builder.ToTable("Clientes").HasKey(c => c.nIdCliente);
        }
    }
}
