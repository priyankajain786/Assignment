//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RentBoat1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Return
    {
        public int Id { get; set; }
        public string BId { get; set; }
        public Nullable<int> CId { get; set; }
        public string Returned { get; set; }
        public Nullable<System.DateTime> ReturnDate { get; set; }
    }
}
