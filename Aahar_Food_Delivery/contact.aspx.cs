﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aahar_Food_Delivery
{
    public partial class contact : System.Web.UI.Page
    {

        String s = System.Configuration.ConfigurationManager.ConnectionStrings["Aahar_con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        public void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        private void Userr()
        {
            getcon();
            SqlDataAdapter da = new SqlDataAdapter("select * from register where Email='" + Session["user"] + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Userr();
            getcon();

            if (Session["user"] == null)
            {
                Button2.Text = "Sign Up";
            }
            else
            {
                Button2.Text = "Logout";
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into contact(Name,Email,Phone,Msg)values('" + txtcnm.Text + "','" + txtcem.Text + "','" + txtcph.Text + "','" + txtcmsg.Text + "')", con);
            cmd.ExecuteNonQuery();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Login/login.aspx");
        }
    }
}