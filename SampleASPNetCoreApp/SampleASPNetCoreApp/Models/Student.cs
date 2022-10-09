using System.ComponentModel.DataAnnotations;

namespace SampleASPNetCoreApp.Models
{
    public class Student
    {
        [Key]
        public int StudentID { get; set; }
        [Required]
        public string FirstName { get; set;} = String.Empty;
        [Required]
        public string LastName { get; set;} = String.Empty;
        [Required]
        [Range(0, 25)]
        public int Age { get; set; }
        [Required]
        public string Gender { get; set; } = string.Empty;
        [Required]
        public int Grade { get; set; }
        [Display(Name = "Class 1")]
        public int? ClassA { get; set; }
        [Display(Name = "Class 2")]
        public int? ClassB { get; set; }
        [Display(Name = "Class 3")]
        public int? ClassC { get; set; }
        [Display(Name = "Class 4")]
        public int? ClassD { get; set; }
        [Display(Name = "Class 5")]
        public int? ClassE { get; set; }
        [Display(Name = "Class 6")]
        public int? ClassF { get; set; }
        [Display(Name = "Class 7")]
        public int? ClassG { get; set; }
        [Display(Name = "Class 8")]
        public int? ClassH { get; set; }
        [Display(Name = "Class 9")]
        public int? ClassI { get; set; }
        [Display(Name = "Class 10")]
        public int? ClassJ { get; set; }
    }
}
