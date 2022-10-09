using Microsoft.EntityFrameworkCore.Migrations;

namespace DryRidgeProgramming.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Question",
                columns: table => new
                {
                    QuestionID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Layout = table.Column<int>(type: "int", nullable: false),
                    QuestionText = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NumberOfOptions = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionA = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionB = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionC = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionD = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionE = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionF = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionG = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionH = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionI = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionJ = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionK = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionL = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionM = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionN = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionO = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionP = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionQ = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionR = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionS = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionT = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionU = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionV = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionW = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionX = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionY = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionZ = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionAA = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionAB = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionAC = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OptionAD = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Question", x => x.QuestionID);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Question");
        }
    }
}
