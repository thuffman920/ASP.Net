﻿// <auto-generated />
using System;
using DryRidgeProgramming.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace DryRidgeProgramming.Migrations
{
    [DbContext(typeof(DryRidgeProgrammingContext))]
    [Migration("20220212014215_OnceMoreRemoveKey")]
    partial class OnceMoreRemoveKey
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

                    b.Property<int?>("NumberOfOptions")
                        .HasColumnType("int");

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

                    b.Property<int?>("QuestionNumber")
                        .HasColumnType("int");

                    b.Property<string>("QuestionText")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("QuestionID");

                    b.ToTable("Question");
                });

            modelBuilder.Entity("DryRidgeProgramming.Models.Request", b =>
                {
                    b.Property<int>("RequestID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Accounts")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("AllowFullAccess")
                        .HasColumnType("bit");

                    b.Property<string>("AppType")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Attributes")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Audience")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("City")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CompanyAddress")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CompanyName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CompanyPhone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ContactTimes")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("DateCreated")
                        .HasColumnType("datetime2");

                    b.Property<DateTime>("DateUpdated")
                        .HasColumnType("datetime2");

                    b.Property<string>("Devices")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("EmployeeNumber")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Features")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FurtherDetails")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Layout")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LayoutDescription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("OSUnknown")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("OsSupport")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("OtherFeatures")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("OverallFunctionality")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("PostalCode")
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("Progress")
                        .HasColumnType("float");

                    b.Property<string>("ProgressLong")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ProgressShort")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ReferenceLayoutA")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ReferenceLayoutB")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ReferenceLayoutC")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ReferenceLayoutD")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ReferenceLayoutE")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ReferenceLayoutF")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("SValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ScannerFeatures")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("State")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("StoreDescription")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TopFeaturesA")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TopFeaturesB")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TopFeaturesC")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TopFeaturesD")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TopFeaturesE")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("UpdatingPrevious")
                        .HasColumnType("bit");

                    b.Property<string>("UseCase")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("UserID")
                        .HasColumnType("int");

                    b.Property<string>("UserProvidedFeatures")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("ViolateAppleStore")
                        .HasColumnType("bit");

                    b.Property<bool>("ViolateCopyright")
                        .HasColumnType("bit");

                    b.Property<bool>("ViolateGoogleStore")
                        .HasColumnType("bit");

                    b.Property<bool>("ViolatePrivacy")
                        .HasColumnType("bit");

                    b.Property<string>("WebInterface")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("RequestID");

                    b.ToTable("Request");
                });

            modelBuilder.Entity("DryRidgeProgramming.Models.User", b =>
                {
                    b.Property<int>("UserID")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("AccountProfileColorBack")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("AccountProfileColorFront")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FirstName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("LastModifiedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("LastName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("NumOfRequests")
                        .HasColumnType("int");

                    b.Property<int>("NumOfTickets")
                        .HasColumnType("int");

                    b.Property<string>("Password")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("SValue")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("TypeUser")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("UserID");

                    b.ToTable("User");
                });
#pragma warning restore 612, 618
        }
    }
}