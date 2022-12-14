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
    public class IndexModel : PageModel
    {
        private readonly SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext _context;

        public IndexModel(SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext context)
        {
            _context = context;
        }

        public IList<Classroom> Classroom { get;set; }

        public async Task OnGetAsync()
        {
            Classroom = await _context.Classroom.ToListAsync();
        }
    }
}
