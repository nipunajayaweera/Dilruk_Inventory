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



        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            date.Text = Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible = false;

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
                    using (var db = new UITestEntities())
                    {
                        PurchaseGood purch = new PurchaseGood
                        {
                            ID = "3",
                            Item = item.Text,
                            Date = Calendar1.SelectedDate,
                            Supplier = DropDownList1.SelectedValue,
                            PricePerKg = Convert.ToDouble(PricePerKg.Text),
                            Quantity = Convert.ToDouble(Quantity.Text)

                        };

                        db.PurchaseGoods.Add(purch);
                        db.SaveChanges();
                    }
                }
                catch (Exception ex)
                {

                    throw;
                }
            }
            
        }
    }
}