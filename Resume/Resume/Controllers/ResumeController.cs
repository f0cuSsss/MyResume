using Resume.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Resume.Controllers
{
    public class ResumeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.myResume = Util.GetResume();

            return View();
        }

        public ActionResult Certificates()
        {
            return View();
        }

    }
}