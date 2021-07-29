﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using PORTAL_DE_TI.Models;

namespace PORTAL_DE_TI.Migrations
{
    [DbContext(typeof(PortalContext))]
    partial class PortalContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.14-servicing-32113")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("PORTAL_DE_TI.Models.NewsDB", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnName("ID")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CaminhoImg")
                        .HasColumnName("CAMINHO_IMG");

                    b.Property<string>("Nome")
                        .HasColumnName("NOME");

                    b.Property<string>("Resenha")
                        .HasColumnName("RESENHA");

                    b.Property<string>("Texto")
                        .HasColumnName("TEXTO");

                    b.HasKey("Id");

                    b.ToTable("TB_News");
                });
#pragma warning restore 612, 618
        }
    }
}