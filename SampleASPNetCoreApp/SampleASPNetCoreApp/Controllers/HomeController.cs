using Microsoft.AspNetCore.Mvc;
using SampleASPNetCoreApp.Models;

namespace SampleASPNetCoreApp.Controllers
{
    public class HomeController : Controller
    {

        private readonly SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext _context;

        public HomeController(SampleASPNetCoreApp.Data.SampleASPNetCoreAppContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IList<Classroom> GetClassrooms()
        {
            var classQuery = from m in _context.Classroom
                             orderby m.ClassroomName
                             select m;
            return classQuery.ToList();
        }
        public IList<Classroom> GetClassrooms(int[] classID)
        {
            IList<Classroom> classrooms = new List<Classroom>();
            for (int i = 0; i < classID.Length; i++)
            {
                if (classID[i] > -1)
                {
                    var classQuery = from m in _context.Classroom
                                     where m.ClassroomID == classID[i]
                                     select m;
                    IList<Classroom> ts = classQuery.ToList();
                    for (int j = 0; j < ts.Count; j++)
                        classrooms.Add(ts[j]);
                }
            }
            return classrooms;
        }
        public IList<IList<string>> GetStudents(int[] classID)
        {
            if (classID.Length < 0)
                return null;
            IList<IList<string>> students = new List<IList<string>>();
            for (int i = 0; i < classID.Length; i++)
            {
                if (classID[i] > -1)
                {
                    var classQuery = from m in _context.Student
                                     orderby m.LastName
                                     where (m.ClassA == classID[i] || m.ClassB == classID[i] || m.ClassC == classID[i] || m.ClassD == classID[i] || m.ClassE == classID[i]
                                     || m.ClassF == classID[i] || m.ClassG == classID[i] || m.ClassH == classID[i] || m.ClassI == classID[i] || m.ClassJ == classID[i])
                                     select m.LastName + ", " + m.FirstName;
                    students.Add(classQuery.ToList());
                }
            }
            return students;
        }
    }
}
