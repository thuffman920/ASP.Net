using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SampleASPNetCore.Models
{
    public class Teacher
    {
        public int TeacherID { get; set; }
        public string FirstName { get; set; } = string.Empty;
        public string LastName { get; set; } = string.Empty;
        public int Age { get; set; }
        public int YearsOfEmployee { get; set; }
        public bool NationalBoardCert { get; set; }
        public DateTime LicenseDate { get; set; }
        public bool IsValidlyLicensed { get; set; }
    }
}
