using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using SampleASPNetCore.Models;

namespace SampleASPNetCore.Data
{
    public class SampleASPNetCoreContext : DbContext
    {
        public SampleASPNetCoreContext (DbContextOptions<SampleASPNetCoreContext> options)
            : base(options)
        {
        }

        public DbSet<SampleASPNetCore.Models.Student> Student { get; set; }
    }
}
