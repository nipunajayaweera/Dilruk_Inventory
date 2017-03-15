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
    public partial class Search_Buyer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string Search(string F, string L, string C)
        {
            string Fname = F;
            string Lname = L;
            string Country = C;

            using (UITestEntities db = new UITestEntities())
            {
                //var buyerL = db.Buyers.Where(o => o.LastName == Lname);
                //var buyerC = db.Buyers.Where(o => o.Country == Country);
                
                if (Fname != "" && Lname != "" && Country != "")
                {
                    var buyer = db.Buyers.Where(o => o.FirstName == Fname && o.LastName == Lname && o.Country == Country).ToList();
                    //var buyer = from c in db.Buyers
                    //            where c.FirstName.Contains(Fname)
                    //            select c;
                    return JsonConvert.SerializeObject(buyer);
                }
                else if (Fname != "" && Lname != "")
                {
                    var buyer = db.Buyers.Where(o => o.FirstName == Fname && o.LastName == Lname).ToList();
                    return JsonConvert.SerializeObject(buyer);
                }
                else if (Fname != "" && Country != "")
                {
                    var buyer = db.Buyers.Where(o => o.FirstName == Fname && o.Country == Country).ToList();
                    return JsonConvert.SerializeObject(buyer);
                }
                else if (Lname != "" && Country != "")
                {
                    var buyer = db.Buyers.Where(o => o.LastName == Lname && o.Country == Country).ToList();
                    return JsonConvert.SerializeObject(buyer);

                }
                else if (Fname != "")
                {
                    //var buyer = db.Buyers.Where(o =>o.FirstName == Fname).ToList();
                    var buyer = from c in db.Buyers
                                where c.FirstName.Contains(Fname)
                                select c;
                    return JsonConvert.SerializeObject(buyer);
                }
                else if (Lname != "")
                {
                    //var buyer = db.Buyers.Where(o => o.LastName == Lname).ToList();
                    var buyer = from c in db.Buyers
                                where c.LastName.Contains(Lname)
                                select c;
                    return JsonConvert.SerializeObject(buyer);
                }
                else if (Country != "")
                {
                    //var buyer = db.Buyers.Where(o => o.Country == Country).ToList();
                    var buyer = from c in db.Buyers
                                where c.Country.Contains(Country)
                                select c;
                    return JsonConvert.SerializeObject(buyer);
                }
                else
                {
                    var buyer = db.Buyers.ToList();
                    return JsonConvert.SerializeObject(buyer);
                }
                
            }
            
        }
        [WebMethod]
        public void Edit(int id)
        {
            Response.Redirect("Update_Buyer.aspx?id="+id);
        }
    }
}