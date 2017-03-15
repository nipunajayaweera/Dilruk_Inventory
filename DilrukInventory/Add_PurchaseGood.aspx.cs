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
    public partial class Add_PurchaseGood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using(var db = new UITestEntities())
            {
                if (!IsPostBack)
                {
                    var sup = from c in db.Supliers
                              orderby c.FirstName
                                       select new { c.ID, c.FirstName };

                    DropDownList1.DataValueField = "ID";
                    DropDownList1.DataTextField = "FirstName";
                    DropDownList1.DataSource = sup.ToList();


                    var good = from c in db.PurchaseGoods
                               orderby c.Item
                               select new { c.ID, c.Item };

                    DropDownList2.DataValueField = "ID";
                    DropDownList2.DataTextField = "Item";
                    DropDownList2.DataSource = good.ToList();


                    DataBind();
                    DropDownList2.Items.Insert(0, "Select a Item");
                    DropDownList1.Items.Insert(0, "Select a Suplier");

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



        //protected void Submit_Click(object sender, EventArgs e)
        //{
        //    if (DropDownList1.SelectedValue == "Select")
        //    {

        //    }
        //    else
        //    {
        //        try
        //        {
        //            DateTime dob = DateTime.Parse(Request.Form[datepicker.UniqueID]);
        //            using (var db = new UITestEntities())
        //            {
        //                var count = db.PurchaseGoods.Count() + 1;
        //                PurchaseGood purch = new PurchaseGood
        //                {
        //                    ID = count.ToString(),
        //                    Item = "",
        //                    Date = dob.Date,
        //                    Supplier = DropDownList1.SelectedValue,
        //                    PricePerKg = Convert.ToDouble(PricePerKg.Text),
        //                    Quantity = Convert.ToDouble(Quantity.Text)

        //                };

        //                db.PurchaseGoods.Add(purch);
        //                db.SaveChanges();
        //            }
        //            //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "<script> function myFunction() {var x = document.getElementById('snackbar') x.className = 'show';setTimeout(function(){ x.className = x.className.replace('show', ''); }, 3000);}</ script > ", true);
        //            Response.Redirect("Add_PurchaseGood.aspx",false);
        //        }
        //        catch (Exception ex)
        //        {

        //            throw;
        //        }
        //    }

        //}
    }
}