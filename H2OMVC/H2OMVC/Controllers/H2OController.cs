using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace H2OMVC.Controllers
{
    public class H2OController : Controller
    { 
        public IActionResult Index()
        {
            return View();
        }
        
        public IActionResult Produto()
        {
            return View();
        }

        public IActionResult Cadastro()
        {
            return View();
        }
    }
}
