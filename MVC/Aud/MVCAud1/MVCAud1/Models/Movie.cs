using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCAud1.Models
{
    public class Movie
    {
        public int id { get; set; }
        public string name { get; set; }
        public float rating { get; set; }
        public string downloadUrl { get; set; }
    }
}