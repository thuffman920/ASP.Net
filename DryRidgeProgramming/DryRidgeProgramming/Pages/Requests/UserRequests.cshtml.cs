using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using DryRidgeProgramming.Data;
using DryRidgeProgramming.Models;
using System.Reflection;

namespace DryRidgeProgramming.Pages.Requests
{
    public class UserRequestsModel : PageModel
    {
        private readonly DryRidgeProgramming.Data.DryRidgeProgrammingContext _context;
        private DryRidgeProgramming.Controllers.HomeController myController;

        public UserRequestsModel(DryRidgeProgramming.Data.DryRidgeProgrammingContext context)
        {
            _context = context;
            myController = new Controllers.HomeController(context);
        }

        [BindProperty(Name = "id", SupportsGet = true)]
        public int QuestionID { get; set; }
        public User User { get; set; }
        [BindProperty]
        public Request Request { get; set; }
        [BindProperty(SupportsGet = false)]
        public string DummyQuestions { get; set; }
        public Question Question { get; set; }
        public string[,] RequestValues { get; set; }
        public string[] OptionValues { get; set; }
        [BindProperty]
        public string Description { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            int? reqID = -1;
            if (id == null)
            {
                return NotFound();
            }
            else if (id == 1 && (Request == null || Request.RequestID == 0))
            {
                Request = myController.InitializeRequest((User != null ? User.UserID : -1));
                _context.Request.Add(Request);
                await _context.SaveChangesAsync();
                if (Request.RequestID == 0)
                {
                    var idquery = from m in _context.Request
                                  where m.DateCreated == Request.DateCreated
                                  select m.RequestID;
                    reqID = idquery.ToList()[0];
                }
                else
                    reqID = Request.RequestID;
                Random random = new Random();
                /**int[] dumInd = new int[] { 2, 6, 16, 19, 22, 26, 31, 35 };
                int[] dumI = new int[] { 1, 2, 3, 4, 5 };
                for (var i = 0; i < 30; i++)
                {
                    int randIndex = random.Next(dumInd.Length);
                    int tempInd = dumInd[(i % dumInd.Length)];
                    dumInd[(i % dumInd.Length)] = dumInd[randIndex];
                    dumInd[randIndex] = tempInd;
                    int randI = random.Next(dumI.Length);
                    int tempI = dumI[(i % dumI.Length)];
                    dumI[(i % dumI.Length)] = dumI[randI];
                    dumI[randI] = tempI;
                }
                DummyQuestions = (dumInd[0] < 10 ? "0" : "") + dumInd[0] + dumI[0] + (dumInd[1] < 10 ? "0" : "") + dumInd[1] + dumI[1] + (dumInd[2] < 10 ? "0" : "") + dumInd[2] + dumI[2];*/
                DummyQuestions = "021062163";
                Description = ";;";
            }
            else
            {
                var reqQuery = from m in _context.Request
                               where m.RequestID == Request.RequestID
                               select m;
                Request = reqQuery.ToList()[0];
            }

            RequestValues = myController.GetRequestValues();

            Question = await _context.Question.FirstOrDefaultAsync(m => m.QuestionNumber == id);

            if (Question == null)
            {
                return NotFound();
            }
            OptionValues = new string[] { Question.Option1, Question.Option2, Question.Option3, Question.Option4, Question.Option5,
                Question.Option6, Question.Option7, Question.Option8, Question.Option9, Question.Option10, Question.Option11, Question.Option12,
                Question.Option13, Question.Option14, Question.Option15, Question.Option16, Question.Option17, Question.Option18, Question.Option19,
                Question.Option20, Question.Option21, Question.Option22, Question.Option23, Question.Option24, Question.Option25, Question.Option26,
                Question.Option27, Question.Option28, Question.Option29, Question.Option30};
            
            return Page();
        }
        public async Task<IActionResult> OnPostAsync(int? id)
        {
            int? reqID = -1;
            if (id == null)
            {
                return NotFound();
            }
            else if (id == 1 && Request.RequestID == 0)
            {
                Request = myController.InitializeRequest((User != null ? User.UserID : -1));
                _context.Request.Add(Request);
                await _context.SaveChangesAsync();
                if (Request.RequestID == 0)
                {
                    var idquery = from m in _context.Request
                                  where m.DateCreated == Request.DateCreated
                                  select m.RequestID;
                    reqID = idquery.ToList()[0];
                }
                else
                    reqID = Request.RequestID;
                Random random = new Random();
                int[] dumInd = new int[] { 2, 6, 16, 19, 22, 26, 31, 35 };
                int[] dumI = new int[] { 1, 2, 3, 4, 5 };
                for (var i = 0; i < 30; i++)
                {
                    int randIndex = random.Next(dumInd.Length);
                    int tempInd = dumInd[(i % dumInd.Length)];
                    dumInd[(i % dumInd.Length)] = dumInd[randIndex];
                    dumInd[randIndex] = tempInd;
                    int randI = random.Next(dumI.Length);
                    int tempI = dumI[(i % dumI.Length)];
                    dumI[(i % dumI.Length)] = dumI[randI];
                    dumI[randI] = tempI;
                }
                DummyQuestions = (dumInd[0] < 10 ? "0" : "") + dumInd[0] + dumI[0] + (dumInd[1] < 10 ? "0" : "") + dumInd[1] + dumI[1] + (dumInd[2] < 10 ? "0" : "") + dumInd[2] + dumI[2];
            }
            else
            {
                var reqQuery = from m in _context.Request
                               where m.RequestID == Request.RequestID
                               select m;
                Request = reqQuery.ToList()[0];
            }

            RequestValues = myController.GetRequestValues();

            Question = await _context.Question.FirstOrDefaultAsync(m => m.QuestionNumber == id);

            if (Question == null)
            {
                return NotFound();
            }
            OptionValues = new string[] { Question.Option1, Question.Option2, Question.Option3, Question.Option4, Question.Option5,
                Question.Option6, Question.Option7, Question.Option8, Question.Option9, Question.Option10, Question.Option11, Question.Option12,
                Question.Option13, Question.Option14, Question.Option15, Question.Option16, Question.Option17, Question.Option18, Question.Option19,
                Question.Option20, Question.Option21, Question.Option22, Question.Option23, Question.Option24, Question.Option25, Question.Option26,
                Question.Option27, Question.Option28, Question.Option29, Question.Option30};
            return Page();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostPrevious()
        {
            Validate();
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Attach(Request).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RequestExists(Request.RequestID))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            int[] dumInd = new int[] { 2, 6, 16, 19, 22, 26, 31, 35 };
            int[] dummy = new int[] { Int32.Parse(DummyQuestions[..2]), Int32.Parse(DummyQuestions[2..3]), Int32.Parse(DummyQuestions[3..5]), Int32.Parse(DummyQuestions[5..6]),
                Int32.Parse(DummyQuestions[6..8]), Int32.Parse(DummyQuestions[8..]) };
            string[] results = myController.NextQuestion(dumInd, dummy, QuestionID, 1);
            return RedirectToPagePreserveMethod(results[0], "", new { id = Int32.Parse(results[1]) });
            //return RedirectToPage("./UserRequests", "", new { id = QuestionID - 1, requestId = Request.RequestID });
        }

        public async Task<IActionResult> OnPostNext()
        {
            Validate();
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Attach(Request).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RequestExists(Request.RequestID))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            int[] dumInd = new int[] { 2, 6, 16, 19, 22, 26, 31, 35 };
            int[] dummy = new int[] { Int32.Parse(DummyQuestions[..2]), Int32.Parse(DummyQuestions[2..3]), Int32.Parse(DummyQuestions[3..5]), Int32.Parse(DummyQuestions[5..6]),
                Int32.Parse(DummyQuestions[6..8]), Int32.Parse(DummyQuestions[8..]) };
            string[] results = myController.NextQuestion(dumInd, dummy, QuestionID, 0);
            return RedirectToPagePreserveMethod(results[0], "", new { id = Int32.Parse(results[1]) });
            //return RedirectToPage("./UserRequests", "", new { id = QuestionID + 1, requestId = Request.RequestID });
        }
        private void Validate()
        {
            Request.DateUpdated = DateTime.Now;
            var reqQuery = from m in _context.Request
                           where m.RequestID == Request.RequestID
                           select m;
            Request localReq = reqQuery.ToList()[0];
            Request = localReq.CompareAndReplace(Request);
        }

        private bool RequestExists(int id)
        {
            return _context.Request.Any(e => e.RequestID == id);
        }
    }
}
