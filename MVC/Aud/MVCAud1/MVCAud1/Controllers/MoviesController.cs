using MVCAud1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCAud1.Controllers
{
    public class MoviesController : Controller
    {

        private MoviesDbContext _context;
        public MoviesController()
        {
            _context = new MoviesDbContext();
        }
        // GET: Movies
        public ActionResult ShowMovie(int id)
        {
            Movie movie = _context.Movies.FirstOrDefault(m => m.id == id);
            MovieRentals model = new MovieRentals();
            //model.customers = movie.Clients.ToList();
            model.movie = movie;
            return View(model);
        }


        public ActionResult ShowAllMovies()
        {
            return View(_context.Movies.ToList());
        }

        public ActionResult NewMovie()
        {
            Movie model = new Movie();
            return View(model);
        }

        [HttpPost]
        public ActionResult InsertNewMovie(Movie model)
        {
            if (!ModelState.IsValid)
            {
                return View("NewMovie", model);
            }
            _context.Movies.Add(model);
            _context.SaveChanges();
            return View("ShowAllMovies", _context.Movies.ToList());
        }

        public ActionResult EditMovie(int id)
        {
            Movie model = _context.Movies.FirstOrDefault(m => m.id == id);
            model.id = id;
            return View(model);
        }

        [HttpPost]
        public ActionResult EditMovie(Movie model)
        {
            if (!ModelState.IsValid)
            {
                return View("EditMovie", model);
            }
            Movie toUpdate = _context.Movies.FirstOrDefault(m => m.id == model.id);
            toUpdate.name = model.name;
            toUpdate.downloadUrl = model.downloadUrl;
            toUpdate.rating = model.rating;
            _context.SaveChanges();
            return View("ShowAllMovies", _context.Movies.ToList());
        }

        public ActionResult DeleteMovie(int id)
        {
            _context.Movies.Remove(_context.Movies.FirstOrDefault(m => m.id == id));
            _context.SaveChanges();
            return View("ShowAllMovies", _context.Movies.ToList());
        }

        protected override void Dispose(bool disposing)
        {
            _context.Dispose();
        }
    }
}