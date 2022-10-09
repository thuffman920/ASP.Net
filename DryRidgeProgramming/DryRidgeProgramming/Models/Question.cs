using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DryRidgeProgramming.Models
{
    public class Question
    {
        [Key]
        [Required]
        public int QuestionID { get; set; }
        [Required]
        public int Layout { get; set; }
        [Required]
        public string QuestionText { get; set; } = string.Empty;
        [Required]
        [Display(Name = "Question Number"), Range(1, 50)]
        public int? QuestionNumber { get; set; }
        [Display(Name = "Number of Options"), Range(0, 30)]
        [Required]
        public int NumberOfOptions { get; set; }
        [Display(Name = "Option 1")]
        public string? Option1 { get; set; }
        [Display(Name = "Option 2")]
        public string? Option2 { get; set; }
        [Display(Name = "Option 3")]
        public string? Option3 { get; set; }
        [Display(Name = "Option 4")]
        public string? Option4 { get; set; }
        [Display(Name = "Option 5")]
        public string? Option5 { get; set; }
        [Display(Name = "Option 6")]
        public string? Option6 { get; set; }
        [Display(Name = "Option 7")]
        public string? Option7 { get; set; }
        [Display(Name = "Option 8")]
        public string? Option8 { get; set; }
        [Display(Name = "Option 9")]
        public string? Option9 { get; set; }
        [Display(Name = "Option 10")]
        public string? Option10 { get; set; }
        [Display(Name = "Option 11")]
        public string? Option11 { get; set; }
        [Display(Name = "Option 12")]
        public string? Option12 { get; set; }
        [Display(Name = "Option 13")]
        public string? Option13 { get; set; }
        [Display(Name = "Option 14")]
        public string? Option14 { get; set; }
        [Display(Name = "Option 15")]
        public string? Option15 { get; set; }
        [Display(Name = "Option 16")]
        public string? Option16 { get; set; }
        [Display(Name = "Option 17")]
        public string? Option17 { get; set; }
        [Display(Name = "Option 18")]
        public string? Option18 { get; set; }
        [Display(Name = "Option 19")]
        public string? Option19 { get; set; }
        [Display(Name = "Option 20")]
        public string? Option20 { get; set; }
        [Display(Name = "Option 21")]
        public string? Option21 { get; set; }
        [Display(Name = "Option 22")]
        public string? Option22 { get; set; }
        [Display(Name = "Option 23")]
        public string? Option23 { get; set; }
        [Display(Name = "Option 24")]
        public string? Option24 { get; set; }
        [Display(Name = "Option 25")]
        public string? Option25 { get; set; }
        [Display(Name = "Option 26")]
        public string? Option26 { get; set; }
        [Display(Name = "Option 27")]
        public string? Option27 { get; set; }
        [Display(Name = "Option 28")]
        public string? Option28 { get; set; }
        [Display(Name = "Option 29")]
        public string? Option29 { get; set; }
        [Display(Name = "Option 30")]
        public string? Option30 { get; set; }
    }
}
