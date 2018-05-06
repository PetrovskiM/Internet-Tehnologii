using MVCAud1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCAud1.Controllers
{
    public class ClientController : Controller
    {

        private MoviesDbContext _context;
        public ClientController()
        {
            _context = new MoviesDbContext();
        }
        // GET: Client
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ShowAllClients()
        {
            return View(_context.Clients.ToList());
        }

        public ActionResult ShowClient(int id)
        {
            Client model = _context.Clients.FirstOrDefault(m => m.id == id);
            return View(model);
        }

        public ActionResult NewClient()
        {
            Client model = new Client();
            return View(model);
        }

        [HttpPost]
        public ActionResult InsertNewClient(Client model)
        {
            if (!ModelState.IsValid)
            {
                return View("NewClient", model);
            }
            _context.Clients.Add(model);
            return View("ShowAllMovies", _context.Movies.ToList());
        }

        public ActionResult EditClient(int id)
        {
            Client model = _context.Clients.FirstOrDefault(m => m.id == id);
            model.id = id;
            return View(model);
        }

        [HttpPost]
        public ActionResult EditClient(Client model)
        {
            if (!ModelState.IsValid)
            {
                return View("EditClient", model);
            }
            Client toUpdate = _context.Clients.FirstOrDefault(m => m.id == model.id);
            toUpdate.age = model.age;
            toUpdate.address = model.address;
            toUpdate.movieCard = model.movieCard;
            toUpdate.name = model.name;
            toUpdate.telephone = model.telephone;
            return View("ShowAllClients", _context.Clients.ToList());
        }

        public ActionResult DeleteClient(int id)
        {
            _context.Clients.Remove(_context.Clients.FirstOrDefault(m => m.id == id));
            return View("ShowAllClients", _context.Clients.ToList());
        }
    }
}