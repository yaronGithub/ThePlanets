﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThePlanets
{
    public partial class Jupiter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Security
            if (Session["admin"] == null && Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}