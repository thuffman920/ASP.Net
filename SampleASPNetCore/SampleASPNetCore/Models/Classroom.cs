using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SampleASPNetCore.Models
{
    public class Classroom
    {
        public int ClassID { get; set; }
        public string ClassName { get; set; } = string.Empty;
        public string Subject { get; set; } = string.Empty;
        public Teacher Teacher { get; set; }
        public List<Student> Students { get; set; }
        public double StartTime { get; set; }
        public double EndTime { get; set; }
    }
}
