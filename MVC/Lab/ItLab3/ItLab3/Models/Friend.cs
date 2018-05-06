using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ItLab3.Models
{
    public class Friend
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Range(0,200)]
        //? to remove annoying 0 default in textbox
        [Display(Name = "Friend Id")]
        public int? FriendNum { get; set; }
        [Required]
        public string Ime { get; set; }
        [Required]
        [Display(Name = "Mesto na Ziveenje")]
        public string MestoZiveenje { get; set; }
        [NotMapped]
        public int IdInList { get; set; }
    }
}