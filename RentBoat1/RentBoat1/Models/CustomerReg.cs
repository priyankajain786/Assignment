using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace RentBoat1.Models
{
    [MetadataType(typeof(CustomerRegData))]
    public partial class Customer
    {
        public class CustomerRegData
        {
            [DisplayName("Customer Name")]            
            public string CName { get; set; }

            [DisplayName("Mobile")]
            public string Mobile { get; set; }
        }
    }    
}