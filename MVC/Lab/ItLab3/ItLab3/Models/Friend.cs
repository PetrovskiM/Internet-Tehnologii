using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ItLab3.Models
{
    public class Friend
    {
        [Required]
        [Range(0,200)]
        //? to remove annoying 0 default in textbox
        public int? Id { get; set; }
        [Required]
        public string Ime { get; set; }
        [Required]
        [Display(Name = "Mesto na Ziveenje")]
        public string MestoZiveenje { get; set; }
        public int IdInList { get; set; }
    }
}