using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleASPNetCoreApp.Migrations
{
    public partial class AddingCustomers : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "StudentID",
                table: "Classroom",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "Student",
                columns: table => new
                {
                    StudentID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FirstName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LastName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Age = table.Column<int>(type: "int", nullable: false),
                    Grade = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Student", x => x.StudentID);
                });

            migrationBuilder.CreateTable(
                name: "Teacher",
                columns: table => new
                {
                    TeacherID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FirstName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LastName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    IsLicensed = table.Column<bool>(type: "bit", nullable: false),
                    YearsOfEmployment = table.Column<int>(type: "int", nullable: false),
                    IsNationalBoardCertified = table.Column<bool>(type: "bit", nullable: false),
                    ClassroomID = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Teacher", x => x.TeacherID);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Classroom_StudentID",
                table: "Classroom",
                column: "StudentID");

            migrationBuilder.AddForeignKey(
                name: "FK_Classroom_Student_StudentID",
                table: "Classroom",
                column: "StudentID",
                principalTable: "Student",
                principalColumn: "StudentID");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Classroom_Student_StudentID",
                table: "Classroom");

            migrationBuilder.DropTable(
                name: "Student");

            migrationBuilder.DropTable(
                name: "Teacher");

            migrationBuilder.DropIndex(
                name: "IX_Classroom_StudentID",
                table: "Classroom");

            migrationBuilder.DropColumn(
                name: "StudentID",
                table: "Classroom");
        }
    }
}
