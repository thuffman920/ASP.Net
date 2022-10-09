#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using SampleASPNetCoreApp.Data;
using SampleASPNetCoreApp.Models;

namespace SampleASPNetCoreApp.Pages.Classrooms
{
    public class DeleteModel : PageModel
    {
        private readonly SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext _context;

        public DeleteModel(SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Classroom Classroom { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Classroom = await _context.Classroom.FirstOrDefaultAsync(m => m.ClassroomID == id);

            if (Classroom == null)
            {
                return NotFound();
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Classroom = await _context.Classroom.FindAsync(id);

            if (Classroom != null)
            {
                _context.Classroom.Remove(Classroom);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
