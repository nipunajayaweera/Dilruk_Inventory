using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DilrukInventory
{
    public partial class Add_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using(var db = new UITestEntities())
            {
                User usr = new User
                {
                    Username = Username.Text,
                    Password = Password.Text,
                    Type = Type.Text
                };
               
            }



        }

        public static void Save_User(User usr)
        {
            using (var db = new UITestEntities())
            {
                db.Users.Add(usr);

            }

        }
    }
}