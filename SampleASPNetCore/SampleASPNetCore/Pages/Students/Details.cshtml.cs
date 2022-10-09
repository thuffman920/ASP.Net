﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using SampleASPNetCore.Data;
using SampleASPNetCore.Models;

namespace SampleASPNetCore.Pages.Students
{
    public class DetailsModel : PageModel
    {
        private readonly SampleASPNetCore.Data.SampleASPNetCoreContext _context;

        public DetailsModel(SampleASPNetCore.Data.SampleASPNetCoreContext context)
        {
            _context = context;
        }

        public Student Student { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Student = await _context.Student.FirstOrDefaultAsync(m => m.StudentID == id);

            if (Student == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
