using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DryRidgeProgramming.Migrations
{
    public partial class Initialization : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Question",
                columns: table => new
                {
                    QuestionID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    QuestionNumber = table.Column<int>(type: "int", nullable: false),
                    QuestionText = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Layout = table.Column<int>(type: "int", nullable: false),
                    NumberOfOptions = table.Column<int>(type: "int", nullable: false),
                    Option1 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option2 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option3 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option4 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option5 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option6 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option7 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option8 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option9 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option10 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option11 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option12 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option13 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option14 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option15 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option16 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option17 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option18 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option19 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option20 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option21 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option22 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option23 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option24 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option25 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option26 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option27 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option28 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option29 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Option30 = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Question", x => x.QuestionID);
                });

            migrationBuilder.CreateTable(
                name: "Request",
                columns: table => new
                {
                    RequestID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SValue = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DateCreated = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    UserID = table.Column<int>(type: "int", nullable: false),
                    CompanyName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CompanyPhone = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CompanyAddress = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    City = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    State = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PostalCode = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ContactTimes = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AppType = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    UseCase = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Audience = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    EmployeeNumber = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Accounts = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    UpdatingPrevious = table.Column<bool>(type: "bit", nullable: false),
                    AllowFullAccess = table.Column<bool>(type: "bit", nullable: false),
                    OsSupport = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    WebInterface = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    OSUnknown = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ViolateGoogleStore = table.Column<bool>(type: "bit", nullable: false),
                    ViolateAppleStore = table.Column<bool>(type: "bit", nullable: false),
                    StoreDescription = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ViolatePrivacy = table.Column<bool>(type: "bit", nullable: false),
                    ViolateCopyright = table.Column<bool>(type: "bit", nullable: false),
                    Devices = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Attributes = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Layout = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ReferenceLayoutA = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ReferenceLayoutB = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ReferenceLayoutC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ReferenceLayoutD = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ReferenceLayoutE = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ReferenceLayoutF = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LayoutDescription = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Features = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    UserProvidedFeatures = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TopFeaturesA = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TopFeaturesB = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TopFeaturesC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TopFeaturesD = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TopFeaturesE = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ScannerFeatures = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    OverallFunctionality = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    OtherFeatures = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    FurtherDetails = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Progress = table.Column<double>(type: "float", nullable: false),
                    ProgressShort = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ProgressLong = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DateUpdated = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Request", x => x.RequestID);
                });

            migrationBuilder.CreateTable(
                name: "User",
                columns: table => new
                {
                    UserID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SValue = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    UserName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    FirstName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LastName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    NumOfTickets = table.Column<int>(type: "int", nullable: false),
                    NumOfRequests = table.Column<int>(type: "int", nullable: false),
                    AccountProfileColorBack = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AccountProfileColorFront = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LastModifiedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    TypeUser = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_User", x => x.UserID);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Question");

            migrationBuilder.DropTable(
                name: "Request");

            migrationBuilder.DropTable(
                name: "User");
        }
    }
}
