using Microsoft.AspNetCore.Mvc;
using MvcApplication4.Models;
using System.Diagnostics;

namespace MvcApplication4.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        public ActionResult ViewModelDemo()
        {
            Data _dummyData = new Data();
            ViewModelDemo vmDemo = new ViewModelDemo();
            vmDemo.allCourses = _dummyData.GetAllCourse();
            vmDemo.allDepartments = _dummyData.GetAllDepartment();
            vmDemo.allEmployees = _dummyData.GetAllEmployee();
            return View(vmDemo);
        }
        public ActionResult PartialViewDemo()
        {
            Data _dummyData = new Data();
            List<Employee> allEmployees = _dummyData.GetAllEmployee();
            return View(allEmployees);
        }
        public ActionResult DepartmentPartialDemo(string EmpCode)
        {
            Data _dummyData = new Data();

            var _depCode = _dummyData.GetAllEmployee().FindAll(emp => emp.EmpCode == EmpCode).FirstOrDefault();


            IEnumerable<Department> cDepartment = _dummyData.GetAllDepartment().FindAll(dep => dep.DepCode == _depCode.DepCode);
            return PartialView("DepartmentPartialView", cDepartment);
        }


        public ActionResult CoursePartialDemo(string EmpCode)
        {
            Data _dummyData = new Data();

            Employee _Emp = _dummyData.GetAllEmployee().FindAll(emp => emp.EmpCode == EmpCode).FirstOrDefault();

            List<Course> cCourses = new List<Course>();
            foreach (Course courses in _Emp.Courses)
            {
                cCourses.Add(_dummyData.GetAllCourse().FindAll(course => course.CourseCode == courses.CourseCode).FirstOrDefault());
            }

            return PartialView("CoursePartialView", cCourses);
        }
    }
}