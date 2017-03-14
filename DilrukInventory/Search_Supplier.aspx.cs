using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DilrukInventory
{
    public partial class Search_Supplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string LoadTable()
        {
            JavaScriptSerializer TheSerializer = new JavaScriptSerializer();
            using (var db = new UITestEntities())
            {
                var data = db.Supliers.OrderBy(o => o.ID).ToList();
                var TheJson = TheSerializer.Serialize(data);
                return TheJson;
            }
        }
    }
}