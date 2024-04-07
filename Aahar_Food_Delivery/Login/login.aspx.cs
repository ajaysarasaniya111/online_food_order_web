using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aahar_Food_Delivery.Login
{
    public partial class login : System.Web.UI.Page
    {
        String s = System.Configuration.ConfigurationManager.ConnectionStrings["Aahar_con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        public void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
         
        protected void Button1_Click(object sender, EventArgs e)
        {
            String user = txtunm.Text.Trim();
            cmd = new SqlCommand("SELECT * FROM register WHERE Email=@username AND Pass=@password", con);
            cmd.Parameters.AddWithValue("@username", txtunm.Text);
            cmd.Parameters.AddWithValue("@password", txtupass.Text);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Session["user"] = user;
                Response.Redirect("../index.aspx");
            }
            else
            {
               // Response.Redirect("login.aspx");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Something Gone Wrong');", true);
            }
        }
    }
}