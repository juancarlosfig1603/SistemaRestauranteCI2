using ApiRestQTL.Entidades.Pedidos;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApiRestQTL.Datos.Mapping.Pedidos
{
    public class PedidoMap : IEntityTypeConfiguration<Pedido>
    {
        public void Configure(EntityTypeBuilder<Pedido> builder)
        {
            builder.ToTable("PedidoCabecera").HasKey(p => p.nIdPedidoCabecera);
        }
    }
}
