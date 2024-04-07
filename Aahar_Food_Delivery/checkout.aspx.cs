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
    public partial class checkout : System.Web.UI.Page
    {
        String s = System.Configuration.ConfigurationManager.ConnectionStrings["Aahar_con"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String st,tat;


        public void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            Label1.Text = Session["name"].ToString();
            Label2.Text = Session["qty"].ToString();
            Label3.Text = Session["price"].ToString();
            Label4.Text = Session["total"].ToString();
            fill();
            Userr();
            if (Session["user"] == null)
            {
                Response.Redirect("Login/login.aspx");
            }

            if (Session["user"] == null)
            {
                Button2.Text = "Sign Up";
            }
            else
            {
                Button2.Text = "Logout";
            }

           

        }
        private void fill()
        {
            getcon();
            da = new SqlDataAdapter("select * from register where Email='" + Session["user"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox9.Text = ds.Tables[0].Rows[0][2].ToString();
            TextBox10.Text = ds.Tables[0].Rows[0][5].ToString();

        }
        private void Userr()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from register where Email='" + Session["user"] + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList2.DataSource = ds;
            DataList2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Login/login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            cmd = new SqlCommand("insert into user_order(pname,qty,price,total,name,cname,saddress,appartment,state,city,pincode,email,mobile)values( '"+Label1.Text+ "','"+Label2.Text+ "' ,'"+Label3.Text+ "','"+Label4.Text+"','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')", con);
            cmd.ExecuteNonQuery();
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            con.Close();
        }
        
    }
}