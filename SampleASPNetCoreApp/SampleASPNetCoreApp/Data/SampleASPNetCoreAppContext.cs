#nullable disable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using SampleASPNetCoreApp.Models;

namespace SampleASPNetCoreApp.Data
{
    public class SampleASPNetCoreAppContext : DbContext
    {
        public SampleASPNetCoreAppContext (DbContextOptions<SampleASPNetCoreAppContext> options)
            : base(options)
        {
        }

        public DbSet<SampleASPNetCoreApp.Models.Classroom> Classroom { get; set; }

        public DbSet<SampleASPNetCoreApp.Models.Teacher> Teacher { get; set; }

        public DbSet<SampleASPNetCoreApp.Models.Student> Student { get; set; }
    }
}
