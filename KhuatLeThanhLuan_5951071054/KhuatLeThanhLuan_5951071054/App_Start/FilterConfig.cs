using System.Web;
using System.Web.Mvc;

namespace KhuatLeThanhLuan_5951071054
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
