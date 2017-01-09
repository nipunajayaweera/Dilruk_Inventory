using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DilrukInventory
{
    public partial class Mater : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                //Session["UserName"] = "";
                Response.Redirect("Login.aspx");
            }
            username.Text = Session["UserName"].ToString();

            if (Request.Url.AbsolutePath.EndsWith("Home.aspx"))
            {
                Home.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("Add_Supplier.aspx"))
            {
                Supplier.Attributes["class"] = "active open";
                AddSupplier.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("Update_Supplier.aspx"))
            {
                Supplier.Attributes["class"] = "active open";
                UpdateSupplier.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("Search_Supplier.aspx"))
            {
                Supplier.Attributes["class"] = "active open";
                SearchSupplier.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("Add_Buyer.aspx"))
            {
                Buyers.Attributes["class"] = "active open";
                AddBuyer.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("Update_Buyer.aspx"))
            {
                Buyers.Attributes["class"] = "active open";
                UpdateBuyer.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("Search_Buyer.aspx"))
            {
                Buyers.Attributes["class"] = "active open";
                SearchBuyer.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("Add_PurchaseGood.aspx"))
            {
                Purchases.Attributes["class"] = "active open";
                AddPurchase.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("Update_PurchaseGood.aspx"))
            {
                Purchases.Attributes["class"] = "active open";
                UpdatePurchase.Attributes["class"] = "active";
            }
            else if (Request.Url.AbsolutePath.EndsWith("Search_PurchaseGood.aspx"))
            {
                Purchases.Attributes["class"] = "active open";
                SearchPurchase.Attributes["class"] = "active";
            }


        }
    }
}