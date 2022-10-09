using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleASPNetCoreApp.Migrations
{
    public partial class AddingCols : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ClassroomID",
                table: "Teacher",
                newName: "Classroom4");

            migrationBuilder.AddColumn<int>(
                name: "Classroom1",
                table: "Teacher",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Classroom2",
                table: "Teacher",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Classroom3",
                table: "Teacher",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CodeName",
                table: "Classroom",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Classroom1",
                table: "Teacher");

            migrationBuilder.DropColumn(
                name: "Classroom2",
                table: "Teacher");

            migrationBuilder.DropColumn(
                name: "Classroom3",
                table: "Teacher");

            migrationBuilder.DropColumn(
                name: "CodeName",
                table: "Classroom");

            migrationBuilder.RenameColumn(
                name: "Classroom4",
                table: "Teacher",
                newName: "ClassroomID");
        }
    }
}
