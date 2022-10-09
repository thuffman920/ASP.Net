namespace MultipleViewsInOneModel.Models
{
    public class Data
    {
        public List<Course> GetAllCourse()
        {
            return new List<Course>
            {
                new Course{CourseCode=1, CourseName="B.Tech"},
                new Course{CourseCode=2, CourseName="M.C.A."},
                new Course{CourseCode=3, CourseName="B.C.A."},
                new Course{CourseCode=4, CourseName="M.Tech"}
            };
        }
        public List<Department> GetAllDepartment()
        {
            return new List<Department>
            {
                new Department{ DepCode=1,DepName="Computer Science & Engg."},
                new Department{ DepCode=2,DepName="Electronics"},
                new Department{ DepCode=3,DepName="Mechanical Engg."},
                new Department{ DepCode=4,DepName="Information Technology"}
            };
        }

        public List<Employee> GetAllEmployee()
        {
            return new List<Employee>
            {
                new Employee{ EmpCode="emp1",EmpName="Suresh Kumar",Courses=
                    new List<Course>{new Course{CourseCode=2, CourseName="M.C.A."},
                                     new Course{CourseCode=3, CourseName="B.C.A."}
                    },
                    DepCode=1
                },
                new Employee{ EmpCode="emp2",EmpName="Rajesh Kumar",Courses=
                    new List<Course>{new Course{CourseCode=1, CourseName="B.Tech"},
                                     new Course{CourseCode=4, CourseName="M.Tech"}
                    },
                    DepCode=4
                },
                new Employee{ EmpCode="emp3",EmpName="Mahesh Kumar",Courses=
                    new List<Course>{new Course{CourseCode=1, CourseName="B.Tech"},
                                     new Course{CourseCode=4, CourseName="M.Tech"}
                    },
                    DepCode=3
                },
                new Employee{ EmpCode="emp4",EmpName="Kamlesh Kumar",Courses=
                    new List<Course>{new Course{CourseCode=2, CourseName="M.C.A."},
                                     new Course{CourseCode=4, CourseName="M.Tech"}
                    },
                    DepCode=2
                }
            };
        }
    }
}
