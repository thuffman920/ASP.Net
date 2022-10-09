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

namespace DryRidgeProgramming.Pages.Questions
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
        [BindProperty(Name = "requestId", SupportsGet = true)]
        public int RequestID { get; set; }
        public User User { get; set; }
        [BindProperty]
        public Request Request { get; set; }
        [BindProperty]
        public Question Question { get; set; }

        public string[] RequestValues { get; set; }
        public string[] OptionValues { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            int? reqID = -1;
            if (id == null) {
                return NotFound();
            } else if (id == 1 && RequestID == 0) {
                Request = myController.InitializeRequest((User != null ? User.UserID : -1));
                RequestValues = myController.GetRequestValues();
                _context.Request.Add(Request);
                await _context.SaveChangesAsync();
                if (Request.RequestID == 0) {
                    var idquery = from m in _context.Request
                                  where m.DateCreated == Request.DateCreated
                                  select m.RequestID;
                    reqID = idquery.ToList()[0];
                }
                else
                    reqID = Request.RequestID;
            } else {
                var reqQuery = from m in _context.Request
                               where m.RequestID == RequestID
                               select m;
                Request = reqQuery.ToList()[0];
            }

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
            return RedirectToPage("./UserRequests", "", new { id = Question.QuestionNumber - 1, requestId = Request.RequestID });
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
            return RedirectToPage("./UserRequests", "", new { id = Question.QuestionNumber + 1, requestId = Request.RequestID });
        }
        private void Validate()
        {
            Request.DateUpdated = DateTime.Now;
            var reqQuery = from m in _context.Request
                           where m.RequestID == Request.RequestID
                           select m;
            Request localReq = reqQuery.ToList()[0];
            Request = localReq.CompareAndReplace(Request);
            var questQuery = from m in _context.Question
                             where m.QuestionID == Question.QuestionID
                             select m;
            Question = questQuery.ToList()[0];
        }

        private bool RequestExists(int id)
        {
            return _context.Request.Any(e => e.RequestID == id);
        }
    }
}
