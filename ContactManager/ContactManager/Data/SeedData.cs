using ContactManager.Authorization;
using ContactManager.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace ContactManager.Data
{
    public class SeedData
    {
        public static async Task Initialize(IServiceProvider serviceProvider, string testUserPw = "")
        {
            using (var context = new ApplicationDbContext(
                serviceProvider.GetRequiredService<DbContextOptions<ApplicationDbContext>>()))
            {
                var adminID = await EnsureUser(serviceProvider, testUserPw, "admin@contoso.com");
                await EnsureRole(serviceProvider, adminID, Constants.ContactAdministratorsRole);

                var managerID = await EnsureUser(serviceProvider, testUserPw, "manager@contoso.com");
                await EnsureRole(serviceProvider, managerID, Constants.ContactManagersRole);
                SeedDB(context, testUserPw);
            }
        }
        private static async Task<IdentityResult> EnsureRole(IServiceProvider serviceProvider, string uid, string role)
        {
            var roleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();

            if (roleManager == null)
            {
                throw new Exception("roleManager null");
            }

            IdentityResult IR;
            if (!await roleManager.RoleExistsAsync(role))
            {
                IR = await roleManager.CreateAsync(new IdentityRole(role));
            }

            var userManager = serviceProvider.GetRequiredService<UserManager<IdentityUser>>();

            var user = await userManager.FindByNameAsync(uid);

            if (user == null)
            {
                throw new Exception("The testUserPW password was probably not strong enough!");
            }

            IR = await userManager.AddToRoleAsync(user, role);

            return IR;
        }

        private static async Task<string> EnsureUser(IServiceProvider serviceProvider, string testUserPw, string userName)
        {
            var userManager = serviceProvider.GetRequiredService<UserManager<IdentityUser>>();

            var user = await userManager.FindByIdAsync(userName);
            if (user == null)
            {
                user = new IdentityUser
                {
                    UserName = userName,
                    EmailConfirmed = true
                };
                await userManager.CreateAsync(user, testUserPw);
            }

            if (user == null)
            {
                throw new Exception("The password is probably not strong enough!");
            }
            return user.Id;
        }

        public static void SeedDB(ApplicationDbContext context, string adminID)
        {
            if (context.Contact.Any())
            {
                return;
            }
            context.Contact.AddRange(
                new Contact
                {
                    Name = "Debra Garcia",
                    Address = "1234 Main St",
                    City = "Redmond",
                    State = "WA",
                    Zip = "10999",
                    Email = "debra@example.com",
                    Status = ContactStatus.Rejected,
                    OwnerID = adminID
                },
                new Contact
                {
                    Name = "Thorsten Weinrich",
                    Address = "5678 1st Ave W",
                    State = "WA",
                    Zip = "10999",
                    Email = "thorsten@example.com",
                    Status = ContactStatus.Approved,
                    OwnerID = adminID
                },
                new Contact
                {
                    Name = "Yuhong Li",
                    Address = "9012 State St",
                    City = "Redmond",
                    State = "WA",
                    Zip = "10999",
                    Email = "yuhong@example.com",
                    Status = ContactStatus.Approved,
                    OwnerID = adminID
                },
                new Contact
                {
                    Name = "Jon Orton",
                    Address = "3456 Maple St",
                    City = "Redmond",
                    State = "WA",
                    Zip = "10999",
                    Email = "jon@example.com",
                    Status = ContactStatus.Approved,
                    OwnerID = adminID
                },
                new Contact
                {
                    Name = "Diliana Alexieva-Bosseva",
                    Address = "7890 2nd Ave E",
                    City = "Redmond",
                    State = "WA",
                    Zip = "10999",
                    Email = "diliana@example.com",
                    Status = ContactStatus.Submitted,
                    OwnerID = adminID
                });
            context.SaveChanges();
        }
    }
}
