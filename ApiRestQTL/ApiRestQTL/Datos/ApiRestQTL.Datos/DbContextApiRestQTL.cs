using ApiRestQTL.Datos.Mapping.Clientes;
using ApiRestQTL.Entidades.Clientes;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApiRestQTL.Datos
{
    public class DbContextApiRestQTL : DbContext
    {

        public DbSet<Cliente> Clientes { get; set; }

        public DbContextApiRestQTL(DbContextOptions<DbContextApiRestQTL> options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.ApplyConfiguration(new ClienteMap());
        }

    }
}
