﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace PORTAL_DE_TI.Models
{

    public class PortalContext : DbContext
    {
        private readonly string _connectionString;

        public PortalContext()
        {
            _connectionString = @"Data Source=Desenvolvimento\SQLEXPRESS;User ID=admin;Password=admin@jrv;Database=DB_Portal_TI;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        }

        public PortalContext(DbContextOptions<PortalContext> options)
            : base(options)
        { }

        public DbSet<NewsDB> NewsDBs { get; set; }
        public DbSet<MenuDB> MenuDBs { get; set; }
        public DbSet<BannerDB> BannerDBs { get; set; }
        public DbSet<Banner4DB> Banner4DBs { get; set; }
        public DbSet<ProcessosDB> ProcessoDBs { get; set; }


        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(_connectionString);
        }
    }
}