using ApiRestQTL.Datos.Mapping.Clientes;
using ApiRestQTL.Datos.Mapping.Comprobantes;
using ApiRestQTL.Datos.Mapping.Estados;
using ApiRestQTL.Datos.Mapping.Pedidos;
using ApiRestQTL.Datos.Mapping.Ubigeo;
using ApiRestQTL.Datos.Mapping.Usuarios;
using ApiRestQTL.Entidades.Clientes;
using ApiRestQTL.Entidades.Comprobantes;
using ApiRestQTL.Entidades.Estados;
using ApiRestQTL.Entidades.Pedidos;
using ApiRestQTL.Entidades.Productos;
using ApiRestQTL.Entidades.Ubigeo;
using ApiRestQTL.Entidades.Usuarios;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApiRestQTL.Datos
{
    public class DbContextApiRestQTL : DbContext
    {

        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Departamento> Departamentos { get; set; }
        public DbSet<Provincia> Provincias { get; set; }
        public DbSet<Distrito> Distritos { get; set; }
        public DbSet<Producto> Productos { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Tipo> Tipos { get; set; }
        public DbSet<Pedido> Pedidos { get; set; }
        public DbSet<PedidoDetalle> PedidosDetalles { get; set; }
        public DbSet<Estado> Estados { get; set; }
        public DbSet<Comprobante> Comprobantes { get; set; }
        public DbSet<ComprobanteDetalle> ComprobantesDetalles { get; set; }
        public DbSet<ComprobanteTipo> ComprobantesTipos { get; set; }


        public DbContextApiRestQTL(DbContextOptions<DbContextApiRestQTL> options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfiguration(new ClienteMap());
            modelBuilder.ApplyConfiguration(new DepartamentoMap());
            modelBuilder.ApplyConfiguration(new ProvinciaMap());
            modelBuilder.ApplyConfiguration(new DistritoMap());
            modelBuilder.ApplyConfiguration(new TipoMap());
            modelBuilder.ApplyConfiguration(new UsuarioMap());
            modelBuilder.ApplyConfiguration(new PedidoMap());
            modelBuilder.ApplyConfiguration(new PedidoDetalleMap());
            modelBuilder.ApplyConfiguration(new EstadoMap());
            modelBuilder.ApplyConfiguration(new ComprobanteMap());
            modelBuilder.ApplyConfiguration(new ComprobanteDetalleMap());
            modelBuilder.ApplyConfiguration(new ComprobanteTipoMap());
        }

    }
}
