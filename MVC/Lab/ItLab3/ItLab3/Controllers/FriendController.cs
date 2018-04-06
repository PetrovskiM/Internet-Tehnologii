using ItLab3.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ItLab3.Controllers
{
    public class FriendController : Controller
    {

        static List<Friend> friendsList = new List<Friend>()
        {
            new Friend(){ Id = 1, Ime="Okram", MestoZiveenje="Sup"},
            new Friend(){ Id = 2, Ime="Vkram", MestoZiveenje="Vup"},
        };

        // GET: Friend
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ShowAllFriends()
        {
            return View(friendsList);
        }

        public ActionResult AddFriend()
        {
            Friend model = new Friend();
            return View(model);
        }

        [HttpPost]
        public ActionResult InsertNewFriend(Friend model)
        {
            if (!ModelState.IsValid)
            {
                return View("AddFriend", model);
            }
            friendsList.Add(model);
            return View("ShowAllFriends", friendsList);
        }

        public ActionResult UpdateFriend(int IdInList)
        {
            Friend model = friendsList.ElementAt(IdInList);
            model.IdInList = IdInList;
            return View(model);
        }

        [HttpPost]
        public ActionResult UpdateFriend(Friend model)
        {
            if (!ModelState.IsValid)
            {
                return View("UpdateFriend", model);
            }
            Friend toUpdate = friendsList.ElementAt(model.IdInList);
            toUpdate.Id = model.Id;
            toUpdate.Ime = model.Ime;
            toUpdate.MestoZiveenje = model.MestoZiveenje;
            return View("ShowAllFriends", friendsList);
        }

        public ActionResult DeleteFriend(int IdInList)
        {
            friendsList.RemoveAt(IdInList);
            return View("ShowAllFriends", friendsList);
        }
    }
}