using ItLab3.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace ItLab3.Controllers
{
    public class FriendController : Controller
    {

        FriendsDbContext db;

        public FriendController()
        {
            db = new FriendsDbContext();
        }

        // GET: Friend
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ShowAllFriends()
        {
            return View(db.Friends.ToList());
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
            db.Friends.Add(model);
            db.SaveChanges();
            return RedirectToAction("ShowAllFriends");
        }

        public ActionResult UpdateFriend(int IdInList)
        {
            Friend model = db.Friends.FirstOrDefault(f => f.Id == IdInList);
            model.Id = IdInList;
            return View(model);
        }

        [HttpPost]
        public ActionResult UpdateFriend(Friend model)
        {
            if (!ModelState.IsValid)
            {
                return View("UpdateFriend", model);
            }
            var i = model.Id;
            Friend toUpdate = db.Friends.FirstOrDefault(f => f.Id == model.Id);
            toUpdate.FriendNum = model.FriendNum;
            toUpdate.Ime = model.Ime;
            toUpdate.MestoZiveenje = model.MestoZiveenje;
            db.SaveChanges();
            return View("ShowAllFriends", db.Friends.ToList());
        }

        public ActionResult DeleteFriend(int? IdInList)
        {
            if (IdInList == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Friend f = db.Friends.Find(IdInList);
            if (f == null)
            {
                return HttpNotFound();
            }
            return View(f);
        }

        [HttpPost, ActionName("DeleteFriend")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Friend f = db.Friends.Find(id);
            db.Friends.Remove(f);
            db.SaveChanges();
            return RedirectToAction("ShowAllFriends");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
        }
    }
}