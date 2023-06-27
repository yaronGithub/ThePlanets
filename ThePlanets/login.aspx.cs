using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThePlanets
{
    public partial class login : System.Web.UI.Page
    {
        public string msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Request.Form["userName"];
            string password = Request.Form["psw"];
            
            if (Request.Form["subLogin"] != null)
            {
                if (userName == "admin" && password == "1234" && MyAdoHelper.IsExist("Database.accdb", String.Format("SELECT * FROM usersTBL WHERE fname='{0}' AND pass='{1}'", userName, password)))
                {
                    Session["admin"] = "admin";
                    Response.Redirect("AdminPage.aspx");
                }else if (MyAdoHelper.IsExist("Database.accdb", String.Format("SELECT * FROM usersTBL WHERE fname='{0}' AND pass='{1}'", userName, password)))
                {
                    Session["user"] = userName;
                    Response.Redirect("UserPage.aspx");
                }else
                {
                    msg = "user does not exists on our Database";
                    Response.Redirect("login.aspx");
                }
                Session["user"] = userName;
                Session["psw"] = password;
            }

            if (Request.Form["subDisconnect"] != null)
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
        }
    }
}
