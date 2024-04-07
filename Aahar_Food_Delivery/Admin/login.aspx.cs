using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aahar_Food_Delivery.Admin
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["Aahar_con"].ConnectionString);
        SqlCommand cm = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String admin = txtlnm.Text.Trim();
            cm = new SqlCommand("SELECT * FROM Admin WHERE Email=@username AND Pass=@password", con);
            cm.Parameters.AddWithValue("@username", txtlnm.Text);
            cm.Parameters.AddWithValue("@password", txtlps.Text);
            con.Open();
            dr = cm.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Session["admin"] = admin;
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Something Gone Wrong');", true);
            }
        }
    }
}