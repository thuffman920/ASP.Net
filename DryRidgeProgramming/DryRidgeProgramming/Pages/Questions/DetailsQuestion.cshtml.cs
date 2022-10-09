#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using DryRidgeProgramming.Data;
using DryRidgeProgramming.Models;

namespace DryRidgeProgramming.Pages.Questions
{
    public class DetailsModel : PageModel
    {
        private readonly DryRidgeProgramming.Data.DryRidgeProgrammingContext _context;

        public DetailsModel(DryRidgeProgramming.Data.DryRidgeProgrammingContext context)
        {
            _context = context;
        }

        public Question Question { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Question = await _context.Question.FirstOrDefaultAsync(m => m.QuestionID == id);

            if (Question == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
