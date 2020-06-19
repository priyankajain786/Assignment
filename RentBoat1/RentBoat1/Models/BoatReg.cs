using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace RentBoat1.Models
{
    [MetadataType(typeof(BoatRegData))]
    public partial class Register
    {
        public class BoatRegData
        {
            [DisplayName("Boat No")]            
            public string BNo { get; set; }
            [DisplayName("Availability")]
            public string Availability { get; set; }
        }
    }
}