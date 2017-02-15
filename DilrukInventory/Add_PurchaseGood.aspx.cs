using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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

                    DataBind();
                    DropDownList1.Items.Insert(0, "Select");
                }


            }
        }




        protected void Submit_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Select")
            {

            }
            else
            {
                try
                {
                    DateTime dob = DateTime.Parse(Request.Form[TextBox1.UniqueID]);
                    using (var db = new UITestEntities())
                    {
                        var count = db.PurchaseGoods.Count() + 1;
                        PurchaseGood purch = new PurchaseGood
                        {
                            ID = count.ToString(),
                            Item = item.Text,
                            Date = dob.Date,
                            Supplier = DropDownList1.SelectedValue,
                            PricePerKg = Convert.ToDouble(PricePerKg.Text),
                            Quantity = Convert.ToDouble(Quantity.Text)

                        };

                        db.PurchaseGoods.Add(purch);
                        db.SaveChanges();
                    }
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "<script> function myFunction() {var x = document.getElementById('snackbar') x.className = 'show';setTimeout(function(){ x.className = x.className.replace('show', ''); }, 3000);}</ script > ", true);
                    Response.Redirect("Add_PurchaseGood.aspx",false);
                }
                catch (Exception ex)
                {

                    throw;
                }
            }

        }
    }
}