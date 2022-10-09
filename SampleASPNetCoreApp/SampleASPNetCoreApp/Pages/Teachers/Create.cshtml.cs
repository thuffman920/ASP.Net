#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using SampleASPNetCoreApp.Data;
using SampleASPNetCoreApp.Models;

namespace SampleASPNetCoreApp.Pages.Teachers
{
    public class CreateModel : PageModel
    {
        private readonly SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext _context;
        private SampleASPNetCoreApp.Controllers.HomeController myController;

        public CreateModel(SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext context)
        {
            myController = new SampleASPNetCoreApp.Controllers.HomeController(context);
            _context = context;
            Classes = myController.GetClassrooms();
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Teacher Teacher { get; set; }
        public IList<SampleASPNetCoreApp.Models.Classroom> Classes { get; set; }

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Teacher.Add(Teacher);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
