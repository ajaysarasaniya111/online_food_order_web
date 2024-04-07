using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aahar_Food_Delivery.Admin
{
    public partial class register : System.Web.UI.Page
    {
        String s = System.Configuration.ConfigurationManager.ConnectionStrings["Aahar_con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

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
            string path;
            if (FileUpload1.HasFile)
            {
                path = "Profile_Image/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(path));
                SqlCommand cmd = new SqlCommand("insert into Admin(Uname,Email,City,Pass,Image)values('"+txtunm.Text+ "','"+txtuem.Text+ "','"+txtcty.SelectedValue+ "','"+txtps.Text+ "','"+path.ToString()+"')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("login.aspx");
            }
        }
    }
}