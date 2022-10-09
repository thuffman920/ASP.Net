using System.ComponentModel.DataAnnotations;

namespace SecureAJAXLogin.Models
{
    public class ErrorViewModel
    {
        [Required]
        [StringLength(25, MinimumLength = 2)]
        public string Name { get ; set; }

        [Required]
        [Display(Name = "E-mail")]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [StringLength(10)]
        public string Message { get; set; }

        public string? RequestId { get; set; }

        public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);
    }
}