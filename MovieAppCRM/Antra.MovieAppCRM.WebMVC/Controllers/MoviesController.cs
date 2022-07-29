using Microsoft.AspNetCore.Mvc;

namespace Antra.MovieAppCRM.WebMVC.Controllers
{
    public class MoviesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
