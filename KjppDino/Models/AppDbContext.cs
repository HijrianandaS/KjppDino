using Microsoft.EntityFrameworkCore;

namespace KjppDino.Models
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<LandValuation> LandValuations { get; set; }
    }
}
