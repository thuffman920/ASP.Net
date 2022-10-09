using Microsoft.EntityFrameworkCore.Migrations;

namespace DryRidgeProgramming.Migrations
{
    public partial class RemoveDuplicateKey : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "sValue",
                table: "User",
                newName: "SValue");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "SValue",
                table: "User",
                newName: "sValue");
        }
    }
}
