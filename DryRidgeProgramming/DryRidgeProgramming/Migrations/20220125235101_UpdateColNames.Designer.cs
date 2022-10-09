﻿// <auto-generated />
using DryRidgeProgramming.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace DryRidgeProgramming.Migrations
{
    [DbContext(typeof(DryRidgeProgrammingContext))]
    [Migration("20220125235101_UpdateColNames")]
    partial class UpdateColNames
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.13")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("DryRidgeProgramming.Models.Question", b =>
                {
                    b.Property<int>("QuestionID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Layout")
                        .HasColumnType("int");

                    b.Property<string>("NumberOfOptions")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option1")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option10")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option11")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option12")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option13")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option14")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option15")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option16")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option17")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option18")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option19")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option2")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option20")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option21")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option22")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option23")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option24")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option25")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option26")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option27")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option28")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option29")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option3")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option30")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option4")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option5")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option6")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option7")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option8")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Option9")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("QuestionText")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("QuestionID");

                    b.ToTable("Question");
                });
#pragma warning restore 612, 618
        }
    }
}