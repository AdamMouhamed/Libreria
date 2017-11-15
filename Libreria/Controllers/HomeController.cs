using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Entidades;
using Dao;

namespace Libreria.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            BibliotecaEntity nose = new BibliotecaEntity();

            var autorlista = nose.Autores.Select(p => p).First();

            var librolista = nose.Libros.Select(r => r).First();


            ViewBag.Title = "Home Page";

            return View();
        }


    }
}
