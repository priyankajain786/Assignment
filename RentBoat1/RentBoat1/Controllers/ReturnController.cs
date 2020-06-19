using RentBoat1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RentBoat1.Controllers
{
    public class ReturnController : Controller
    {
        RentBoatEntities1 db = new RentBoatEntities1();
        //
        // GET: /Return/
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult GetBoat()
        {
            var boat = db.Registers.ToList();
            return Json(boat, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult GetId(int Id)
        {
            var customer = (from s in db.Customers where s.CId == Id select s.CName).ToList();
            return Json(customer, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult GetAvailable(string BoatNo)
        {
            var boatavailable = (from s in db.Registers where s.BNo == BoatNo select s.Availability).ToList();
            return Json(boatavailable, JsonRequestBehavior.AllowGet);
        }

        //[HttpPost]
        //public ActionResult Save(RentBoatEntities1 data)
        //{
        //    //RentBoatEntities1 db = new RentBoatEntities1();
        //    Rental Rn = new Rental();
        //    Rn.CId= data.
        //}


        //[HttpPost]
        //public ActionResult Save([Bind(Include = "BId,CId,Rent,StartDate,EndDate")] Rental rental)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Rentals.Add(rental);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    return View(rental);
        //}

        [HttpPost]
        public ActionResult Save(string BoatNo, int CustId, string Returned, DateTime ReturnDate)
        {
            Return rtn = new Return();
            rtn.BId = BoatNo;
            rtn.CId = CustId;
            rtn.Returned = Returned;
            rtn.ReturnDate = ReturnDate;
            

            if (ModelState.IsValid)
            {
                db.Returns.Add(rtn);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(rtn);
        }        
    }
}