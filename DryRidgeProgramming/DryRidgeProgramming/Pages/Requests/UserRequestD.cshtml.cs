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
    public class UserRequestDModel : PageModel
    {
        private readonly DryRidgeProgramming.Data.DryRidgeProgrammingContext _context;
        private DryRidgeProgramming.Controllers.HomeController myController;

        public UserRequestDModel(DryRidgeProgramming.Data.DryRidgeProgrammingContext context)
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
        public int Options { get; set; }
        [BindProperty]
        public string Description { get; set; }
        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Request = await _context.Request.FirstOrDefaultAsync(m => m.RequestID == Request.RequestID);

            if (Request == null)
            {
                return NotFound();
            }
            return Page();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostPreviousD()
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
        public async Task<IActionResult> OnPostNextD()
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
