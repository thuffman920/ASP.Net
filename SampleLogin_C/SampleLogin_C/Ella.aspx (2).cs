using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleLogin_C
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string expressFilename = "expressions.txt";
        string precodedFilename = "preset.txt";
        string[,] precoded;
        List<List<string[]>> expressions;
        List<string> categories;
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] preFile = System.IO.File.ReadAllLines(precodedFilename);
            precoded = new string[preFile.Length, 2];
            for (int i = 0; i < preFile.Length; i++)
            {
                int a = preFile[i].IndexOf(" A: ");
                precoded[i, 0] = preFile[i].Substring(3, a - 3);
                precoded[i, 1] = preFile[i].Substring(a + 4);
            }
            expressions = new List<List<string[]>>();
            categories = new List<string>();
            string[] expressLines = System.IO.File.ReadAllLines(expressFilename);
            int j = 0;
            while (j < expressLines.Length)
            {
                int index = expressLines[j].IndexOf(": (");
                categories.Add(expressLines[j].Substring(0, index));
                int catLen = Int32.Parse(expressLines[j].Substring(index + 3, expressLines[j].Length - index - 4));
                List<string[]> values = new List<string[]>();
                for (int i = 0; i < catLen; i++)
                    values.Add(expressLines[j + 1 + i].Split('/'));
                expressions.Add(values);
                j += catLen + 1;
            }
            Random rand = new Random();
            int greetInd = rand.Next(0, expressions[0].Count - 1);
            int day = 0;
            if (expressions[0][greetInd][0].ToLower().Contains("morning"))
                day = timeOfDay();
            int punc = 0;
            char[] punctuations = new char[] { ' ', '!', '.', ',' };
            if (!expressions[0][greetInd][day].EndsWith("?"))
                punc = rand.Next(1, 3);
            string opening = "";
            //If is for website help, this is the line to execute
            /**if (websiteHelper == true) {
                for (int i = 0; i < expressions[1].Count; i++) {
                    if (expressions[1][i][0].EndsWith(" (W)"))
                    {
                        opening = expressions[1][i][0].Substring(0, expressions[1][i][0].IndexOf(" (W)"));
                        break;
                    }
                }
            } else
            {*/
            int randIntOpen = rand.Next(0, expressions[1].Count);
            int dayOpening = 0;
            if (expressions[1][randIntOpen][0].ToLower().Contains("morning"))
                dayOpening = timeOfDay();
            if (expressions[1][randIntOpen][0].EndsWith(" (W)"))
                opening = expressions[1][randIntOpen][0].Substring(0, expressions[1][randIntOpen][0].IndexOf(" (W)"));
            else
                opening = expressions[1][randIntOpen][dayOpening];
            //}
            r1Text.InnerText = expressions[0][greetInd][day] + punctuations[punc] + (punc == 0 ? "" : " ") + (punc != 3 ? "M" : "m") + "y name is ELLA. " + opening;
        }

        private int timeOfDay()
        {
            TimeSpan span = DateTime.Now.TimeOfDay;
            if (span.TotalHours < 12)
                return 0;
            else if (span.TotalHours < 18)
                return 1;
            return 2;
        }
        [WebMethod]
        public static string ellasResponse(string value)
        {
            return "Hello there!";
        }
        [WebMethod]
        public static string ellasResponseWeb(string value)
        {
            return "I am here!";
        }
    }
}