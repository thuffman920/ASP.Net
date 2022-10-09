using System;
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
    public class IndexModel : PageModel
    {
        private readonly SampleASPNetCore.Data.SampleASPNetCoreContext _context;

        public IndexModel(SampleASPNetCore.Data.SampleASPNetCoreContext context)
        {
            _context = context;
        }

        public IList<Student> Student { get;set; }

        public async Task OnGetAsync()
        {
            Student = await _context.Student.ToListAsync();
        }
    }
}
