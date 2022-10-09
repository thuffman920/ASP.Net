using System.ComponentModel.DataAnnotations;

namespace SampleASPNetCoreApp.Models
{
    public class Teacher
    {
        [Key]
        public int TeacherID { get; set; }
        [Required]
        public string FirstName { get; set; } = string.Empty;
        [Required]
        public string LastName { get; set; } = string.Empty;
        [Required]
        public string Gender { get; set; } = string.Empty;
        [Required]
        public int Age { get; set; }
        [Required]
        public bool IsLicensed { get; set; }
        [Required]
        public int YearsOfEmployment { get; set; }
        [Required]
        public bool IsNationalBoardCertified { get; set; }
        public int? Classroom1 { get; set; }
        public int? Classroom2 { get; set; }
        public int? Classroom3 { get; set; }
        public int? Classroom4 { get; set; }
    }
}
