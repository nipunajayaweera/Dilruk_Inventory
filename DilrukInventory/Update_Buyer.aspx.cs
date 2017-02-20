using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DilrukInventory
{
    public partial class Update_Buyer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Error_404.aspx");
            }
            int id = Int32.Parse(Request.QueryString["id"]);
            using (var db = new UITestEntities())
            {
                Buyer buyer = db.Buyers.Find(id);
                if (buyer == null)
                {
                    
                }
                else
                {
                    fname.Text = buyer.FirstName;
                    lname.Text = buyer.LastName;
                    address.Text = buyer.Address;
                    country.Text = buyer.Country;
                    telephone.Text = buyer.Telephone;
                    fax.Text = buyer.Fax;
                    email.Text = buyer.Email;
                    remarks.Text = buyer.Remarks;
                    
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("Error_404.aspx");
            }
            int id = Int32.Parse(Request.QueryString["id"]);
            using (var db = new UITestEntities())
            {
                Buyer buyer = db.Buyers.Single(u => u.ID == id);

                buyer.FirstName = fname.Text;
                buyer.LastName = lname.Text;
                buyer.Address = address.Text;
                buyer.Country = country.Text;
                buyer.Telephone = telephone.Text;
                buyer.Fax = fax.Text;
                buyer.Email = email.Text;
                buyer.Remarks = remarks.Text;
                
                db.SaveChanges();
            }

            Response.Redirect("Search_Buyer.aspx");
        }
    }
}