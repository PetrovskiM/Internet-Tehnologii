using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ItLab3.Models
{
    public class FriendsDbContext : DbContext
    {
        public DbSet<Friend> Friends { get; set; }

        public FriendsDbContext() : base("ItLab3.Models.FriendsDbContext")
        {

        }
    }
}