using Microsoft.EntityFrameworkCore.Migrations;

namespace DryRidgeProgramming.Migrations
{
    public partial class ReorganizeAll : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Options",
                table: "Question");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Options",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
