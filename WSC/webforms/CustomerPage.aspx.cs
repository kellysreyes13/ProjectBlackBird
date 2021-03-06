﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WSC.webforms
{
    public partial class CustomerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Logoutbtn.Visible = false;
            welcomelbl.Visible = false;
            if (Session["UserInfo"] != null)
            {
                System.Collections.Hashtable ht = (System.Collections.Hashtable)Session["UserInfo"];
                string strUserName = ht.ContainsKey("UserName") ? Convert.ToString(ht["UserName"]) : "";
                string strRole = ht.ContainsKey("Role") ? Convert.ToString(ht["Role"]) : "";
                string strFirstName = ht.ContainsKey("FirstName") ? Convert.ToString(ht["FirstName"]) : "";
                string strLastName = ht.ContainsKey("LastName") ? Convert.ToString(ht["LastName"]) : "";
                welcomelbl.Text = "Welcome! " + strUserName;
                welcomelbl.Visible = true;
                Logoutbtn.Visible = true;
                if (!(strRole == "Customer" ))
                {
                    Session.Clear();
                    Response.Redirect("Login.aspx");
                }
            }

        }
        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
    }
}