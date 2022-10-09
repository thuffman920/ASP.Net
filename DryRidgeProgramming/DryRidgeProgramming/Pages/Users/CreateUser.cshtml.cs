using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using DryRidgeProgramming.Data;
using DryRidgeProgramming.Models;
using System.Security.Cryptography;
using System.Text;
using DryRidgeProgramming.Controllers;

namespace DryRidgeProgramming.Pages.Users
{
    public class CreateModel : PageModel
    {
        private readonly DryRidgeProgramming.Data.DryRidgeProgrammingContext _context;
        public CreateModel(DryRidgeProgramming.Data.DryRidgeProgrammingContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public User User { get; set; }

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }
            DRPConstructor constructor = new DRPConstructor();
            constructor.EncryptPass(User.Password);
            User.SValue = constructor.GetSaltLine();
            User.UserName = constructor.BuildUser(User.UserName);
            User.Password = constructor.GetSPass();
            User.CreatedDate = constructor.GetNowTime();
            User.LastModifiedDate = constructor.GetNowTime();

            _context.User.Add(User);
            await _context.SaveChangesAsync();

            return RedirectToPage("./UserIndex");
        }
    }
}
