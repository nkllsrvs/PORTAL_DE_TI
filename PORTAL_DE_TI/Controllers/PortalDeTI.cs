﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using PORTAL_DE_TI.Models;

namespace PORTAL_DE_TI.Controllers
{
    public class PortalDeTI : PrivateController
    {
        public IActionResult Index()
        {
            List<NewsDB> news = db.NewsDBs.ToList();

            List<BannerDB> banner = db.BannerDBs.ToList();

            List<Banner4DB> banner4 = db.Banner4DBs.ToList();

            List<ProcessosDB> processos = db.ProcessoDBs.ToList();

            ViewBag.News = news.OrderByDescending(b => b.DataCadastro).Take(4).ToList();

            ViewBag.Banner = banner.OrderByDescending(b => b.DataCadastro).Take(5).ToList();

            ViewBag.Banner4 = banner4.OrderBy(b => b.Id).Take(4).ToList();

            ViewBag.Processos = processos.OrderByDescending(b => b.DataCadastro).Take(4).ToList();

            return View();
        }
    }
}
