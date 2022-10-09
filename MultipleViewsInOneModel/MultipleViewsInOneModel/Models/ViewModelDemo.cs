using MultipleViewsInOneModel.Models;

namespace MultipleViewsInOneModel.Models
{
    public class ViewModelDemo
    {
        public List<Employee> AllEmployees { get; set; }
        public List<Course> AllCourses { get; set; }
        public List<Department> AllDepartments { get; set; }
    }
}
