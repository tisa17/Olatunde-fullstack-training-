using Microsoft.AspNetCore.Mvc;

namespace Antra.MovieAppCRM.WebMVC.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
