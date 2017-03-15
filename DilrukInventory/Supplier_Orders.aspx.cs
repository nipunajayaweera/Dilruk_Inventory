using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DilrukInventory
{
    public partial class Supplier_Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Supplier_Order.aspx");
        }

        protected void Search_Click(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string Search(string F)
        {
            string Fname = F;

            using (UITestEntities db = new UITestEntities())
            {
                 if (Fname != "")
                {
                    var buyer = from c in db.Supliers
                                where c.FirstName.Contains(Fname)
                                select c;
                    return JsonConvert.SerializeObject(buyer);
                }
                else
                {
                    var buyer = db.Supliers.ToList();
                    return JsonConvert.SerializeObject(buyer);
                }

            }

        }
    }
}