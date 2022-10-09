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

namespace SampleASPNetCoreApp.Pages.Teachers
{
    public class DetailsModel : PageModel
    {
        private readonly SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext _context;
        private SampleASPNetCoreApp.Controllers.HomeController myController;

        public DetailsModel(SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext context)
        {
            myController = new SampleASPNetCoreApp.Controllers.HomeController(context);
            _context = context;
            if (Teacher != null)
            {
                int[] teachClass = new int[4] { (int)Teacher.Classroom1, (int)Teacher.Classroom2, (int)Teacher.Classroom3, (int)Teacher.Classroom4 };
                Classes = myController.GetClassrooms(teachClass);
                Students = myController.GetStudents(teachClass);
            }
        }

        public Teacher Teacher { get; set; }
        public IList<Classroom> Classes { get; set; }
        public IList<IList<string>> Students { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Teacher = await _context.Teacher.FirstOrDefaultAsync(m => m.TeacherID == id);

            if (Teacher == null)
            {

                return NotFound();
            }
            int[] teachClass = new int[4] { (int)Teacher.Classroom1, (int)Teacher.Classroom2, (int)Teacher.Classroom3, (int)Teacher.Classroom4 };
            Classes = myController.GetClassrooms(teachClass);
            Students = myController.GetStudents(teachClass);
            return Page();
        }
    }
}
