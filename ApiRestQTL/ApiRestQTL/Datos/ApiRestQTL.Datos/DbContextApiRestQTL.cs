using ApiRestQTL.Datos.Mapping.Clientes;
using ApiRestQTL.Datos.Mapping.Ubigeo;
using ApiRestQTL.Entidades.Clientes;
using ApiRestQTL.Entidades.Productos;
using ApiRestQTL.Entidades.Ubigeo;
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
        }

    }
}
