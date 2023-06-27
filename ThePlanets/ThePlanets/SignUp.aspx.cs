using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThePlanets
{
    public partial class SignUp : System.Web.UI.Page
    {
        public string RegStatus;
        public string f;
        public string l;
        public string em;
        public string gender;
        public string birthday;
        public string country;
        protected void Page_Load(object sender, EventArgs e)
        {
            // If the sign in button is sent then it's going to check if all the parameters are validate - if not then it would pop up an error to the user
            if (Request.Form["signBtn"] != null)
            {
                f = Request.Form["fname"];
                l = Request.Form["lname"];
                em = Request.Form["Email"];
                string p = Request.Form["psw"];
                gender = Request.Form["gender"];
                birthday = Request.Form["birthday"];
                country = Request.Form["coun"];

                string filename = "Database.accdb";
                string sql = String.Format("INSERT INTO usersTBL (fname,lname,Email,pass,gender,dateOfBirth,country) VALUES ('{0}','{1}','{2}','{3}','{4}','{5}','6')", f, l, em, p, gender, birthday, country);

                if (MyAdoHelper.IsExist(filename, String.Format("SELECT * FROM usersTBL WHERE fname='{0}' AND pass='{1}'", f, p)) || MyAdoHelper.IsExist(filename, String.Format("SELECT * FROM usersTBL WHERE Email='{0}'", em)))
                {
                    RegStatus = "user already exits in DB";
                }
                else
                {
                    MyAdoHelper.DoQuery(filename, sql);
                    RegStatus = "Registration Worked! Welcome " + f;
                }
            }
        }
    }
}
