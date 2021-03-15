using KhuatLeThanhLuan_5951071054.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace KhuatLeThanhLuan_5951071054.Controllers
{
    public class StudentController : ApiController
    {
        // GET: api/Student
        public IEnumerable<SvInfo> Get()
        {
            var SvInfoList = new List<SvInfo>();
            var SvInfo = new SvInfo
                {
                    MSV = "5951071054",
                    Hoten = "Khuất Lê Thành Luân",
                };
            SvInfoList.Add(SvInfo);
            return SvInfoList;
        }

        // GET: api/Student/5
        public SvInfo Get(int id)
        {
            return new SvInfo
            {
                MSV = "5951071054",
                Hoten = "Khuất Lê Thành Luân",
            }; ;
        }

        // POST: api/Student
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Student/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Student/5
        public void Delete(int id)
        {
        }
    }
}
