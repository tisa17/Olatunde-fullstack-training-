using Microsoft.AspNetCore.Mvc;

namespace Antra.MovieAppCRM.WebMVC.Controllers
{
    public class UserController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
