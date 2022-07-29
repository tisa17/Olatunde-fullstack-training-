using Microsoft.AspNetCore.Mvc;

namespace Antra.MovieAppCRM.WebMVC.Controllers
{
    public class AdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
