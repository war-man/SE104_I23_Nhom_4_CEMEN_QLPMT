//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoAnQLPM.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Benh
    {
        public Benh()
        {
            this.PhieuKBs = new HashSet<PhieuKB>();
        }
    
        public int MaBenh { get; set; }
        public string TenBenh { get; set; }
    
        public virtual ICollection<PhieuKB> PhieuKBs { get; set; }
    }
}
