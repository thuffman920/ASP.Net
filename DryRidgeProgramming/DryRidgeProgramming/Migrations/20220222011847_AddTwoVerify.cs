using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DryRidgeProgramming.Migrations
{
    public partial class AddTwoVerify : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Verified",
                table: "Request");

            migrationBuilder.AddColumn<bool>(
                name: "VerifiedA",
                table: "Request",
                type: "bit",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "VerifiedB",
                table: "Request",
                type: "bit",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "VerifiedC",
                table: "Request",
                type: "bit",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "VerifiedA",
                table: "Request");

            migrationBuilder.DropColumn(
                name: "VerifiedB",
                table: "Request");

            migrationBuilder.DropColumn(
                name: "VerifiedC",
                table: "Request");

            migrationBuilder.AddColumn<bool>(
                name: "Verified",
                table: "Request",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }
    }
}
