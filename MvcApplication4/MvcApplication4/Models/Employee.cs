namespace MvcApplication4.Models
{
    public class Employee
    {
        public string EmpCode { get; set; }
        public string EmpName { get; set; }
        public int DepCode { get; set; }
        public List<Course> Courses { get; set; }
    }
}
