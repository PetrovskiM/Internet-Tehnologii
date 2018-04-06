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

        static List<Client> clientsList = new List<Client>()
        {
            new Client(){ name = "Client One", movieCard = "1234", address = "Adresa 1/23", age = 23, telephone = "071555333"},
            new Client(){ name = "Client Two", movieCard = "2345", address = "Adresa 2/12", age = 43, telephone = "5423134"},
            new Client(){ name = "Client Three", movieCard = "3456", address = "Adresa 3/2", age = 33, telephone = "098765"},
        };

        static List<Movie> moviesList = new List<Movie>()
        {
            new Movie(){name = "LOTR2", downloadUrl="URL2", rating = 10.1f}
        };
        // GET: Movies
        public ActionResult ShowMovie(int id)
        {
            Movie movie = moviesList.ElementAt(id);
            MovieRentals model = new MovieRentals();
            model.customers = clientsList;
            model.movie = movie;
            return View(model);
        }


        public ActionResult ShowAllMovies()
        {
            return View(moviesList);
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
            moviesList.Add(model);
            return View("ShowAllMovies", moviesList);
        }

        public ActionResult EditMovie(int id)
        {
            Movie model = moviesList.ElementAt(id);
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
            Movie toUpdate = moviesList.ElementAt(model.id);
            toUpdate.name = model.name;
            toUpdate.downloadUrl = model.downloadUrl;
            toUpdate.rating = model.rating;
            return View("ShowAllMovies", moviesList);
        }

        public ActionResult DeleteMovie(int id)
        {
            moviesList.RemoveAt(id);
            return View("ShowAllMovies", moviesList);
        }

        public ActionResult ShowAllClients()
        {
            return View(clientsList);
        }

        public ActionResult ShowClient(int id)
        {
            Client model = clientsList.ElementAt(id);
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
            clientsList.Add(model);
            return View("ShowAllMovies", moviesList);
        }

        public ActionResult EditClient(int id)
        {
            Client model = clientsList.ElementAt(id);
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
            Client toUpdate = clientsList.ElementAt(model.id);
            toUpdate.age = model.age;
            toUpdate.address = model.address;
            toUpdate.movieCard = model.movieCard;
            toUpdate.name = model.name;
            toUpdate.telephone = model.telephone;
            return View("ShowAllClients", clientsList);
        }

        public ActionResult DeleteClient(int id)
        {
            clientsList.RemoveAt(id);
            return View("ShowAllClients", clientsList);
        }
    }
}