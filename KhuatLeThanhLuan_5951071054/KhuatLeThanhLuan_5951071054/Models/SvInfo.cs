using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace KhuatLeThanhLuan_5951071054.Models
{
    [DataContract]
    public class SvInfo
    {
        [DataMember(Name = "msv")]
        public string MSV { get; set; }
        [DataMember(Name = "hoten")]
        public string Hoten { get; set; }
    }
}