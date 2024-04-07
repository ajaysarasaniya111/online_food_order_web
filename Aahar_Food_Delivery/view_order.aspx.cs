using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aahar_Food_Delivery
{
    public partial class view_order : System.Web.UI.Page
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
            fill_cart();
        }

        void fill_cart()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from user_order where email='" + Session["user"] + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

    }
}