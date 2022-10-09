using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace DryRidgeProgramming.Migrations
{
    public partial class AddQuestionNo : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "QuestionNumber",
                table: "Question",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "Request",
                columns: table => new
                {
                    RequestID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SValue = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DateCreated = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UserID = table.Column<int>(type: "int", nullable: false),
                    CompanyName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CompanyPhone = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CompanyAddress = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    City = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    State = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PostalCode = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ContactTimes = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AppType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UseCase = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Audience = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    EmployeeNumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Accounts = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatingPrevious = table.Column<bool>(type: "bit", nullable: false),
                    AllowFullAccess = table.Column<bool>(type: "bit", nullable: false),
                    OsSupport = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    WebInterface = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OSUnknown = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ViolateGoogleStore = table.Column<bool>(type: "bit", nullable: false),
                    ViolateAppleStore = table.Column<bool>(type: "bit", nullable: false),
                    StoreDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ViolatePrivacy = table.Column<bool>(type: "bit", nullable: false),
                    ViolateCopyright = table.Column<bool>(type: "bit", nullable: false),
                    Devices = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Attributes = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Layout = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ReferenceLayoutA = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ReferenceLayoutB = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ReferenceLayoutC = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ReferenceLayoutD = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ReferenceLayoutE = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ReferenceLayoutF = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    LayoutDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Features = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UserProvidedFeatures = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TopFeaturesA = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TopFeaturesB = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TopFeaturesC = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TopFeaturesD = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TopFeaturesE = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ScannerFeatures = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OverallFunctionality = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OtherFeatures = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    FurtherDetails = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Progress = table.Column<double>(type: "float", nullable: false),
                    ProgressShort = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ProgressLong = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DateUpdated = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Request", x => x.RequestID);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Request");

            migrationBuilder.DropColumn(
                name: "QuestionNumber",
                table: "Question");
        }
    }
}
