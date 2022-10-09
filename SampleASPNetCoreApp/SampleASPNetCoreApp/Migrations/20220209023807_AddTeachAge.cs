using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleASPNetCoreApp.Migrations
{
    public partial class AddTeachAge : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Age",
                table: "Teacher",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Age",
                table: "Teacher");
        }
    }
}
