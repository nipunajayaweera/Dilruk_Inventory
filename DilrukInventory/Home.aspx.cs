using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DilrukInventory
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (UITestEntities ctx = new UITestEntities())
                {

                    ctx.Database.Connection.Open();
                    var a = ctx.Users.Select(o=>o).ToList<User>();
                        
                        
                       
                    TextBox1.Text = a[0].Username;

                }
            }
            catch (Exception ex)
            {

                throw;
            }
           
        }
    }
}