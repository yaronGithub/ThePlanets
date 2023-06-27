using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThePlanets
{
    public partial class Earth : System.Web.UI.Page
    {
        public string date;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Security
            if (Session["admin"] == null && Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            date = DateTime.Now.ToString();
        }
    }
}
