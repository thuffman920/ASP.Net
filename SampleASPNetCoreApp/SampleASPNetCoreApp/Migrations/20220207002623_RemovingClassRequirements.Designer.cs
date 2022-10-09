﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using SampleASPNetCoreApp.Data;

#nullable disable

namespace SampleASPNetCoreApp.Migrations
{
    [DbContext(typeof(SampleASPNetCoreAppContext))]
    [Migration("20220207002623_RemovingClassRequirements")]
    partial class RemovingClassRequirements
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.1")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("SampleASPNetCoreApp.Models.Classroom", b =>
                {
                    b.Property<int>("ClassroomID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("ClassroomID"), 1L, 1);

                    b.Property<string>("ClassroomName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("EndTime")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("StartTime")
                        .HasColumnType("datetime2");

                    b.Property<string>("Subject")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ClassroomID");

                    b.ToTable("Classroom");
                });

            modelBuilder.Entity("SampleASPNetCoreApp.Models.Student", b =>
                {
                    b.Property<int>("StudentID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("StudentID"), 1L, 1);

                    b.Property<int>("Age")
                        .HasColumnType("int");

                    b.Property<int?>("ClassA")
                        .HasColumnType("int");

                    b.Property<int?>("ClassB")
                        .HasColumnType("int");

                    b.Property<int?>("ClassC")
                        .HasColumnType("int");

                    b.Property<int?>("ClassD")
                        .HasColumnType("int");

                    b.Property<int?>("ClassE")
                        .HasColumnType("int");

                    b.Property<int?>("ClassF")
                        .HasColumnType("int");

                    b.Property<int?>("ClassG")
                        .HasColumnType("int");

                    b.Property<int?>("ClassH")
                        .HasColumnType("int");

                    b.Property<int?>("ClassI")
                        .HasColumnType("int");

                    b.Property<int?>("ClassJ")
                        .HasColumnType("int");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Grade")
                        .HasColumnType("int");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("StudentID");

                    b.ToTable("Student");
                });

            modelBuilder.Entity("SampleASPNetCoreApp.Models.Teacher", b =>
                {
                    b.Property<int>("TeacherID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("TeacherID"), 1L, 1);

                    b.Property<int?>("ClassroomID")
                        .HasColumnType("int");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("IsLicensed")
                        .HasColumnType("bit");

                    b.Property<bool>("IsNationalBoardCertified")
                        .HasColumnType("bit");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("YearsOfEmployment")
                        .HasColumnType("int");

                    b.HasKey("TeacherID");

                    b.ToTable("Teacher");
                });
#pragma warning restore 612, 618
        }
    }
}
