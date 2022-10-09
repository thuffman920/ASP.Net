using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleASPNetCoreApp.Migrations
{
    public partial class RemovingStudentClasses : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Classroom_Student_StudentID",
                table: "Classroom");

            migrationBuilder.DropIndex(
                name: "IX_Classroom_StudentID",
                table: "Classroom");

            migrationBuilder.DropColumn(
                name: "StudentID",
                table: "Classroom");

            migrationBuilder.AddColumn<int>(
                name: "ClassA",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClassB",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClassC",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClassD",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClassE",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClassF",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClassG",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClassH",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClassI",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "ClassJ",
                table: "Student",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ClassA",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "ClassB",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "ClassC",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "ClassD",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "ClassE",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "ClassF",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "ClassG",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "ClassH",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "ClassI",
                table: "Student");

            migrationBuilder.DropColumn(
                name: "ClassJ",
                table: "Student");

            migrationBuilder.AddColumn<int>(
                name: "StudentID",
                table: "Classroom",
                type: "int",
                nullable: true);

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
    }
}
