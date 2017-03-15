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
    public partial class Add_Supplier_Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new UITestEntities())
            {
                if (!IsPostBack)
                {
                    var sup = from c in db.Supliers
                              orderby c.FirstName
                              select new
                              {
                                 c.ID,
                                 Username = c.FirstName + " " + c.LastName
                              };

                    SupplierNameDD.DataValueField = "ID";
                    SupplierNameDD.DataTextField = "Username";
                    SupplierNameDD.DataSource = sup.ToList();

                    var good = from c in db.PurchaseGoods
                               orderby c.Item
                               select new { c.ID, c.Item };

                    ItemDD.DataValueField = "ID";
                    ItemDD.DataTextField = "Item";
                    ItemDD.DataSource = good.ToList();


                    DataBind();
                    ItemDD.Items.Insert(0, "Select a Item");
                    SupplierNameDD.Items.Insert(0, "Select a Suplier");

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
    }
}