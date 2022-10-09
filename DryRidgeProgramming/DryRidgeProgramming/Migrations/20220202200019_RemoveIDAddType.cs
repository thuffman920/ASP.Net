using Microsoft.EntityFrameworkCore.Migrations;

namespace DryRidgeProgramming.Migrations
{
    public partial class RemoveIDAddType : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Status",
                table: "User");

            migrationBuilder.RenameColumn(
                name: "OwnerID",
                table: "User",
                newName: "TypeUser");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "TypeUser",
                table: "User",
                newName: "OwnerID");

            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "User",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }
    }
}
