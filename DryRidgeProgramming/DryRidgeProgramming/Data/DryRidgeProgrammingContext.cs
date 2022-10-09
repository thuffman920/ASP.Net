#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using DryRidgeProgramming.Models;

namespace DryRidgeProgramming.Data
{
    public class DryRidgeProgrammingContext : DbContext
    {
        public DryRidgeProgrammingContext (DbContextOptions<DryRidgeProgrammingContext> options)
            : base(options)
        {
        }

        public DbSet<DryRidgeProgramming.Models.Question> Question { get; set; }

        public DbSet<DryRidgeProgramming.Models.Request> Request { get; set; }

        public DbSet<DryRidgeProgramming.Models.User> User { get; set; }
    }
}
