using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DilrukInventory
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Click += new EventHandler(this.GreetingBtn_Click);
        }
        private void GreetingBtn_Click(Object sender, EventArgs e)
        {
            try
            {
                using (UITestEntities ctx = new UITestEntities())
                {
                    ctx.Database.Connection.Open();
                    var usr = ctx.Users.Where(o => o.Username == txtusername.Text.ToString()).ToList<User>();
                    if (usr.Count ==0)
                    {
                        Label1.Text = "errrroooo";
                    }
                    else
                    {
                        if (usr[0].Password == txtpassword.Text)
                        {
                            if (usr[0].Type.Equals("ADMIN"))
                            {
                                Session["UserName"] = usr[0].Username;
                                Label1.Text = "Pleace Wait";
                                Response.Redirect("Home.aspx",false);
                            }
                            else
                            {
                                Response.Redirect("");
                            }
                            
                        }
                        else
                        {
                            Label1.Text = "asfq";
                        }
                    }
                    

                    
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Error_404.aspx");
                throw;
            }
            // Display the greeting label text.
            
        }
    }
}