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
    public partial class View_food_dish : System.Web.UI.Page
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
            showAdmin();
            fill();
        }


        private void showAdmin()
        {

            SqlDataAdapter da = new SqlDataAdapter("select * from Admin where Email='" + Session["admin"] + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList2.DataSource = ds;
            DataList2.DataBind();
        }

        private void fill()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from user_order", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("login.aspx");
        }
    }
}