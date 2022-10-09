using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ContactManager.Data.Migrations
{
    public partial class userId_Status : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "Contact",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Status",
                table: "Contact");
        }
    }
}
