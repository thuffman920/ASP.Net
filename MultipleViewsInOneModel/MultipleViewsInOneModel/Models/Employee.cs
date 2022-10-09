namespace MultipleViewsInOneModel.Models
{
    public class Employee
    {
        public string EmpCode { get; set; }
        public string EmpName { get; set; }
        public int DepCode { get; set; }
        public List<Course> Courses { get; set; }
    }
    public class Department
    {
        public int DepCode { get; set; }
        public string DepName { get; set;}
    }
    public class Course
    {
        public int CourseCode { get; set; }
        public string CourseName { get; set; }
    }
}
