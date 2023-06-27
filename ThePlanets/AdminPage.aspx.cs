using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ThePlanets
{
    public partial class AdminPage : System.Web.UI.Page
    {
        public string usersList = ""; 
        protected void Page_Load(object sender, EventArgs e)
        {
            // For security
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            // If the admin wants to delete a user on the database
            if (Request.Form["delete"] != null)
            {
                string userName = Request.Form["userNameD"];
                string sql1 = String.Format("DELETE FROM usersTBL WHERE fname='{0}'", userName);
                MyAdoHelper.DoQuery("Database.accdb", sql1);
            }

            string sql = "SELECT * FROM usersTBL";

            // Filter the database according a field and a value
            if (Request.Form["filter"] != null)
            {
                string field = Request.Form["field"];
                string value = Request.Form["fieldValue"];
                if (value != null)
                {
                    sql = String.Format("SELECT * FROM usersTBL WHERE {0}='{1}'", field, value);
                }
            }

            // If the admin want to see the whole database
            if (Request.Form["fullDB"] != null)
            {
                sql = "SELECT * FROM usersTBL";
            }

            DataTable Dtable = MyAdoHelper.ExecuteDataTable("Database.accdb", sql);

            // Presenting the database according a sql scentence
            int length = Dtable.Rows.Count;
            if (length > 0)
            {
                usersList += "<table border='5' style='color:Green;text-align:centerl;' >";
                usersList += "<tr style='color:Red; font-size:30px;text-align:center;' >";

                usersList += "<th>fname</th>";
                usersList += "<th>lname</th>";
                usersList += "<th>Email</th>";
                usersList += "<th>pass</th>";
                usersList += "<th>gender</th>";
                usersList += "<th>dateOfBirth</th>";
                usersList += "<th>country</th>";
                usersList += "</tr>";
                for (int i = 0; i < length; i++)
                {
                    if (Dtable.Rows[i]["fname"].ToString() == "admin")
                    {
                        usersList += "<tr style='color: yellow; font-weight: bolder;'>";
                        usersList += "<td>" + Dtable.Rows[i]["fname"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["lname"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["Email"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["pass"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["gender"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["dateOfBirth"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["country"] + "</td>";
                        usersList += "</tr>";
                    }else
                    {
                        usersList += "<tr>";
                        usersList += "<td>" + Dtable.Rows[i]["fname"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["lname"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["Email"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["pass"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["gender"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["dateOfBirth"] + "</td>";
                        usersList += "<td>" + Dtable.Rows[i]["country"] + "</td>";
                        usersList += "</tr>";
                    }
                }
                usersList += "</table>";
            }
        }
    }
}
