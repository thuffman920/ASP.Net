using System.ComponentModel.DataAnnotations;

namespace SampleASPNetCoreApp.Models
{
    public class Classroom
    {
        public int ClassroomID { get; set; }
        [Required]
        [Display(Name = "Class Code Name")]
        public string CodeName { get; set; } = string.Empty;
        [Required]
        [Display(Name = "Classroom Name")]
        public string ClassroomName { get; set; } = string.Empty;
        [Required]
        public string Subject { get; set; } = string.Empty;
        [Display(Name = "Start Time")]
        [DataType(DataType.Time)]
        public DateTime StartTime { get; set; }
        [Display(Name = "End Time")]
        [DataType(DataType.Time)]
        public DateTime EndTime { get; set; }
    }
}
