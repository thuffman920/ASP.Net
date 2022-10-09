using Microsoft.EntityFrameworkCore.Migrations;

namespace DryRidgeProgramming.Migrations
{
    public partial class UpdateColNames : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "OptionZ",
                table: "Question",
                newName: "Option9");

            migrationBuilder.RenameColumn(
                name: "OptionY",
                table: "Question",
                newName: "Option8");

            migrationBuilder.RenameColumn(
                name: "OptionX",
                table: "Question",
                newName: "Option7");

            migrationBuilder.RenameColumn(
                name: "OptionW",
                table: "Question",
                newName: "Option6");

            migrationBuilder.RenameColumn(
                name: "OptionV",
                table: "Question",
                newName: "Option5");

            migrationBuilder.RenameColumn(
                name: "OptionU",
                table: "Question",
                newName: "Option4");

            migrationBuilder.RenameColumn(
                name: "OptionT",
                table: "Question",
                newName: "Option30");

            migrationBuilder.RenameColumn(
                name: "OptionS",
                table: "Question",
                newName: "Option3");

            migrationBuilder.RenameColumn(
                name: "OptionR",
                table: "Question",
                newName: "Option29");

            migrationBuilder.RenameColumn(
                name: "OptionQ",
                table: "Question",
                newName: "Option28");

            migrationBuilder.RenameColumn(
                name: "OptionP",
                table: "Question",
                newName: "Option27");

            migrationBuilder.RenameColumn(
                name: "OptionO",
                table: "Question",
                newName: "Option26");

            migrationBuilder.RenameColumn(
                name: "OptionN",
                table: "Question",
                newName: "Option25");

            migrationBuilder.RenameColumn(
                name: "OptionM",
                table: "Question",
                newName: "Option24");

            migrationBuilder.RenameColumn(
                name: "OptionL",
                table: "Question",
                newName: "Option23");

            migrationBuilder.RenameColumn(
                name: "OptionK",
                table: "Question",
                newName: "Option22");

            migrationBuilder.RenameColumn(
                name: "OptionJ",
                table: "Question",
                newName: "Option21");

            migrationBuilder.RenameColumn(
                name: "OptionI",
                table: "Question",
                newName: "Option20");

            migrationBuilder.RenameColumn(
                name: "OptionH",
                table: "Question",
                newName: "Option2");

            migrationBuilder.RenameColumn(
                name: "OptionG",
                table: "Question",
                newName: "Option19");

            migrationBuilder.RenameColumn(
                name: "OptionF",
                table: "Question",
                newName: "Option18");

            migrationBuilder.RenameColumn(
                name: "OptionE",
                table: "Question",
                newName: "Option17");

            migrationBuilder.RenameColumn(
                name: "OptionD",
                table: "Question",
                newName: "Option16");

            migrationBuilder.RenameColumn(
                name: "OptionC",
                table: "Question",
                newName: "Option15");

            migrationBuilder.RenameColumn(
                name: "OptionB",
                table: "Question",
                newName: "Option14");

            migrationBuilder.RenameColumn(
                name: "OptionAD",
                table: "Question",
                newName: "Option13");

            migrationBuilder.RenameColumn(
                name: "OptionAC",
                table: "Question",
                newName: "Option12");

            migrationBuilder.RenameColumn(
                name: "OptionAB",
                table: "Question",
                newName: "Option11");

            migrationBuilder.RenameColumn(
                name: "OptionAA",
                table: "Question",
                newName: "Option10");

            migrationBuilder.RenameColumn(
                name: "OptionA",
                table: "Question",
                newName: "Option1");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Option9",
                table: "Question",
                newName: "OptionZ");

            migrationBuilder.RenameColumn(
                name: "Option8",
                table: "Question",
                newName: "OptionY");

            migrationBuilder.RenameColumn(
                name: "Option7",
                table: "Question",
                newName: "OptionX");

            migrationBuilder.RenameColumn(
                name: "Option6",
                table: "Question",
                newName: "OptionW");

            migrationBuilder.RenameColumn(
                name: "Option5",
                table: "Question",
                newName: "OptionV");

            migrationBuilder.RenameColumn(
                name: "Option4",
                table: "Question",
                newName: "OptionU");

            migrationBuilder.RenameColumn(
                name: "Option30",
                table: "Question",
                newName: "OptionT");

            migrationBuilder.RenameColumn(
                name: "Option3",
                table: "Question",
                newName: "OptionS");

            migrationBuilder.RenameColumn(
                name: "Option29",
                table: "Question",
                newName: "OptionR");

            migrationBuilder.RenameColumn(
                name: "Option28",
                table: "Question",
                newName: "OptionQ");

            migrationBuilder.RenameColumn(
                name: "Option27",
                table: "Question",
                newName: "OptionP");

            migrationBuilder.RenameColumn(
                name: "Option26",
                table: "Question",
                newName: "OptionO");

            migrationBuilder.RenameColumn(
                name: "Option25",
                table: "Question",
                newName: "OptionN");

            migrationBuilder.RenameColumn(
                name: "Option24",
                table: "Question",
                newName: "OptionM");

            migrationBuilder.RenameColumn(
                name: "Option23",
                table: "Question",
                newName: "OptionL");

            migrationBuilder.RenameColumn(
                name: "Option22",
                table: "Question",
                newName: "OptionK");

            migrationBuilder.RenameColumn(
                name: "Option21",
                table: "Question",
                newName: "OptionJ");

            migrationBuilder.RenameColumn(
                name: "Option20",
                table: "Question",
                newName: "OptionI");

            migrationBuilder.RenameColumn(
                name: "Option2",
                table: "Question",
                newName: "OptionH");

            migrationBuilder.RenameColumn(
                name: "Option19",
                table: "Question",
                newName: "OptionG");

            migrationBuilder.RenameColumn(
                name: "Option18",
                table: "Question",
                newName: "OptionF");

            migrationBuilder.RenameColumn(
                name: "Option17",
                table: "Question",
                newName: "OptionE");

            migrationBuilder.RenameColumn(
                name: "Option16",
                table: "Question",
                newName: "OptionD");

            migrationBuilder.RenameColumn(
                name: "Option15",
                table: "Question",
                newName: "OptionC");

            migrationBuilder.RenameColumn(
                name: "Option14",
                table: "Question",
                newName: "OptionB");

            migrationBuilder.RenameColumn(
                name: "Option13",
                table: "Question",
                newName: "OptionAD");

            migrationBuilder.RenameColumn(
                name: "Option12",
                table: "Question",
                newName: "OptionAC");

            migrationBuilder.RenameColumn(
                name: "Option11",
                table: "Question",
                newName: "OptionAB");

            migrationBuilder.RenameColumn(
                name: "Option10",
                table: "Question",
                newName: "OptionAA");

            migrationBuilder.RenameColumn(
                name: "Option1",
                table: "Question",
                newName: "OptionA");
        }
    }
}
