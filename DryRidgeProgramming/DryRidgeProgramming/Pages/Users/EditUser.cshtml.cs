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
using System.Text;
using System.Security.Cryptography;

namespace DryRidgeProgramming.Pages.Users
{
    public class EditModel : PageModel
    {
        private readonly DryRidgeProgramming.Data.DryRidgeProgrammingContext _context;
        private List<int> intsSaltValue;
        private DateTime nowTime;

        public EditModel(DryRidgeProgramming.Data.DryRidgeProgrammingContext context)
        {
            _context = context;
        }

        [BindProperty]
        public User User { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            User = await _context.User.FirstOrDefaultAsync(m => m.UserID == id);

            if (User == null)
            {
                return NotFound();
            }
            return Page();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            Controllers.DRPConstructor drpC = new Controllers.DRPConstructor();
            User.UserName = drpC.BuildUser(User.UserName);
            _context.Attach(User).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserExists(User.UserID))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./UserIndex");
        }

        private bool UserExists(int id)
        {
            return _context.User.Any(e => e.UserID == id);
        }
    }
}
