using Microsoft.EntityFrameworkCore.Migrations;

namespace DryRidgeProgramming.Migrations
{
    public partial class ReorganizeLines : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "OptionType",
                table: "Question",
                newName: "Option9");

            migrationBuilder.AlterColumn<int>(
                name: "NumberOfOptions",
                table: "Question",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option1",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option10",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option11",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option12",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option13",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option14",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option15",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option16",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option17",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option18",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option19",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option2",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option20",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option21",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option22",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option23",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option24",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option25",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option26",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option27",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option28",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option29",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option3",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option30",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option4",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option5",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option6",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option7",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Option8",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Option1",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option10",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option11",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option12",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option13",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option14",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option15",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option16",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option17",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option18",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option19",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option2",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option20",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option21",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option22",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option23",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option24",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option25",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option26",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option27",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option28",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option29",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option3",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option30",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option4",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option5",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option6",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option7",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Option8",
                table: "Question");

            migrationBuilder.RenameColumn(
                name: "Option9",
                table: "Question",
                newName: "OptionType");

            migrationBuilder.AlterColumn<string>(
                name: "NumberOfOptions",
                table: "Question",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");
        }
    }
}
