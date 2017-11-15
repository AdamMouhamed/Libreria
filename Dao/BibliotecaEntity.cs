using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Common;
using MySql.Data.Entity;
using System.Data.Entity;
using MySql.Data;
using System.Data.Entity.ModelConfiguration;
using Entidades;

namespace Libreria
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class BibliotecaEntity : DbContext
    {
        
        //[DbConfigurationType(typeof(MySql.Data.Entity.MySqlEFConfiguration))]
        public BibliotecaEntity() : base("bdbiblioteca") { }
        
        public DbSet<Autor> Autores { get; set; }
        public DbSet<Libro> Libros { get; set; }
        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Prestamo> Prestamos { get; set; }

    }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Autor>().ToTable("autores");
            modelBuilder.Entity<Cliente>().ToTable("clientes");
            modelBuilder.Entity<Libro>().ToTable("libros");
            modelBuilder.Entity<Prestamo>().ToTable("prestamos");


            /*var entity = modelBuilder.Entity<Autor>().ToTable("autores");

            entity.HasKey
            .Property(p => p.DeviceRouteId, "RECORRIDO_ID")
                .Property(p => p.MeasurementDefinitionId, "MEDICION_ID")
                .Property(p => p.Value, "VALOR")
                .Property(p => p.TakedOn, "FECHA")
                .Property(p => p.ImportedOn, "FECHA_IMPORTACION")
                .Property(p => p.DeviceId, "DEVICE_ID")
                .Property(p => p.Username, "USUARIO")
                .Ignore(p => p.Name)
                .Ignore(p => p.MeasurementId)
                .Ignore(p => p.MeasurementDefinitionCode);*/
        }
    }
}