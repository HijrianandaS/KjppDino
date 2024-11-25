using Microsoft.AspNetCore.Mvc;

namespace formReport.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
