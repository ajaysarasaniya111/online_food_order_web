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
    public partial class AddProduct : System.Web.UI.Page
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
        private void showAdmin()
        {

            SqlDataAdapter da = new SqlDataAdapter("select * from Admin where Email='" + Session["admin"] + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            showAdmin();
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                //
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath +"Food_Products/" + FileUpload1.FileName);
                path = FileUpload1.FileName;
                SqlCommand cmd = new SqlCommand("insert into products(Name,Price,Type,Image,Details)values('" + txtfnm.Text +"','" + txtfpr.Text+ "','" +Dishtyp.SelectedValue.ToString()+ "','" + path.ToString() + "','"+txtfdet.Text+"')", con);
                cmd.ExecuteNonQuery();
                con.Close();
              
            }
        }
    }
}