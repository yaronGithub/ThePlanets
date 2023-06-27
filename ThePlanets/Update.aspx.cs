using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThePlanets
{
    public partial class Update : System.Web.UI.Page
    {
        public string userDetails = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            // Security
            if (Session["admin"] == null && Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }

            string fn = Request.Form["fname"];
            string ln = Request.Form["lname"];
            string ps = Request.Form["psw"];
            string gender = Request.Form["gender"];
            string country = Request.Form["coun"];

            string fname = Session["user"].ToString();
            //string password = Session["pass"].ToString();
            string sql;
            if (Request.Form["update"] != null)
            {
                sql = String.Format("UPDATE usersTBL SET fname='{0}', lname='{1}', pass='{2}', gender='{3}', country='{4}' WHERE fname='{5}'", fn, ln, ps, gender, country, fname);
                MyAdoHelper.DoQuery("Database.accdb", sql);
                Session["user"] = fn;
                Response.Redirect("Update.aspx");
            }

            sql = String.Format("SELECT * FROM usersTBL WHERE fname='{0}'", fname);

            DataTable Dtable = MyAdoHelper.ExecuteDataTable("Database.accdb", sql);

            int length = Dtable.Rows.Count;
            if (length > 0)
            {
                userDetails += "<table border='5' style='color:Green;text-align:centerl;' >";
                userDetails += "<tr style='color:Red; font-size:30px;text-align:center;' >";

                userDetails += "<th>fname</th>";
                userDetails += "<th>lname</th>";
                userDetails += "<th>Email</th>";
                userDetails += "<th>pass</th>";
                userDetails += "<th>gender</th>";
                userDetails += "<th>dateOfBirth</th>";
                userDetails += "<th>country</th>";
                userDetails += "</tr>";
                
                userDetails += "<tr>";
                userDetails += "<td>" + Dtable.Rows[0]["fname"] + "</td>";
                userDetails += "<td>" + Dtable.Rows[0]["lname"] + "</td>";
                userDetails += "<td>" + Dtable.Rows[0]["Email"] + "</td>";
                userDetails += "<td>" + Dtable.Rows[0]["pass"] + "</td>";
                userDetails += "<td>" + Dtable.Rows[0]["gender"] + "</td>";
                userDetails += "<td>" + Dtable.Rows[0]["dateOfBirth"] + "</td>";
                userDetails += "<td>" + Dtable.Rows[0]["country"] + "</td>";
                userDetails += "</tr>";
                
                userDetails += "</table>";

                Session["user"] = Dtable.Rows[0]["fname"];
            }
        }
    }
}
