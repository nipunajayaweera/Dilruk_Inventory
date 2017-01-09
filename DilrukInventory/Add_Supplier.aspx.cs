using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DilrukInventory
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit(object sender, EventArgs e)
        {
            try
            {
                UITestEntities db = new UITestEntities();

                Suplier sup = new Suplier
                {
                    FirstName = fname.Text.ToString(),
                    LastName = lname.Text.ToString(),
                    Address = address.Text.ToString(),
                    Telephone = telephone.Text.ToString(),
                    Fax = fax.Text.ToString(),
                    Email = email.Text.ToString(),
                    Remarks = remarks.Text.ToString()

                };

                db.Supliers.Add(sup);
            }
            catch (Exception ex)
            {

                throw;
            }
            

        }
    }
}