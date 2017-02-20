using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DilrukInventory
{
    public partial class Add_Buyer1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuyerSaveBtn_Click(object sender, EventArgs e)
        {
            var buyer = new Buyer();
            using (UITestEntities DB = new UITestEntities())
            {
                try
                {
                    buyer.ID = 1;
                    buyer.FirstName = fname.Text;
                    buyer.LastName = lname.Text;
                    buyer.Address = address.Text;
                    buyer.Country = country.Text;
                    buyer.Telephone = telephone.Text;
                    buyer.Fax = fax.Text;
                    buyer.Email = email.Text;
                    buyer.Remarks = remarks.Text;


                    DB.Buyers.Add(buyer);
                    DB.SaveChanges();
                }
                catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
                {
                    Exception raise = dbEx;
                    foreach (var validationErrors in dbEx.EntityValidationErrors)
                    {
                        foreach (var validationError in validationErrors.ValidationErrors)
                        {
                            string message = string.Format("{0}:{1}",
                                validationErrors.Entry.Entity.ToString(),
                                validationError.ErrorMessage);
                            // raise a new exception nesting  
                            // the current instance as InnerException  
                            raise = new InvalidOperationException(message, raise);
                        }
                    }
                    throw raise;
                }
            }
        }
    }
}