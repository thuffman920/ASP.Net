using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DryRidgeProgramming.Migrations
{
    public partial class AddVerify : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "Verified",
                table: "Request",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Verified",
                table: "Request");
        }
    }
}
