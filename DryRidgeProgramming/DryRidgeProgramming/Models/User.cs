using System.ComponentModel.DataAnnotations;

namespace DryRidgeProgramming.Models
{
    public class User
    {
        public int UserID { get; set; }
        public string SValue { get; set; } = string.Empty;
        [Display(Name = "Username")]
        public string UserName { get; set; } = string.Empty;
        [DataType(DataType.Password)]
        public string Password { get; set; } = string.Empty;
        [Display(Name = "First Name")]
        public string FirstName { get; set; } = string.Empty;
        public string Email { get; set; } = string.Empty;
        [Display(Name = "Last Name")]
        public string LastName { get; set; } = string.Empty;
        [Display(Name = "Number of Tickets")]
        public int NumOfTickets { get; set; }
        [Display(Name = "Number of Requests")]
        public int NumOfRequests { get; set; }
        [Display(Name = "Profile Background Color")]
        public string AccountProfileColorBack { get; set; } = string.Empty;
        [Display(Name = "Profile Text Color")]
        public string AccountProfileColorFront { get; set; } = string.Empty;
        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime LastModifiedDate { get; set; }
        [DataType(DataType.Date)]
        public DateTime CreatedDate { get; set; }
        public string TypeUser { get; set; } = string.Empty;
    }
}
