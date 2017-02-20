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
    public partial class Create_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new UITestEntities())
            {
                if (!IsPostBack)
                {
                    var good = from c in db.PurchaseGoods
                              orderby c.Item
                              select new { c.ID, c.Item };

                    DropDownList1.DataValueField = "ID";
                    DropDownList1.DataTextField = "Item";
                    DropDownList1.DataSource = good.ToList();

                    DataBind();
                    DropDownList1.Items.Insert(0, "Select a Item");
                }


            }
        }
        [WebMethod]
        public static string LoadTypeDropDown(int id)
        {
            //edit this --------------------------------------------------------------------------------------------------------------------------
            using (var db = new UITestEntities())
            {
                var good = from c in db.PurchaseGoods
                           orderby c.Item
                           select new { c.ID, c.Item };
                
                return JsonConvert.SerializeObject(good.ToList());
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {

        }
    }
}