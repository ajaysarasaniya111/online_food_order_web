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
    public partial class register : System.Web.UI.Page
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
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path;
            if (FileUpload1.HasFile)
            {
                path = "../Client_userProfile/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(path));
                cmd = new SqlCommand("insert into register(Name,Email,Pass,address,mobile,image)values('" + txtrnm.Text + "','" + txtrem.Text + "','" + txtrpass.Text + "','"+txtadd.Text+ "','" + txtmob.Text + "','" + path.ToString()+ "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}