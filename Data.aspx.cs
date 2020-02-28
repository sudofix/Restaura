using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
public partial class Data : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["ResturaConnectionString1"].ConnectionString;
        
            using (SqlConnection conn = new SqlConnection(s))
            {
                SqlCommand c = new SqlCommand("insert into breakfast (name, price, img) values ('" + TextBox1.Text +  "' , " + int.Parse(TextBox2.Text) + " , '" + TextBox3.Text + "')", conn);
                conn.Open();
                c.ExecuteNonQuery();
            Response.Redirect("~/data.aspx");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["ResturaConnectionString1"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(s))
        {
            SqlCommand c = new SqlCommand("insert into dessert (name, price, img) values ('" + TextBox5.Text + "'," + int.Parse(TextBox6.Text) + ",'" + TextBox7.Text + "')", conn);
            conn.Open();
            c.ExecuteNonQuery();
            Response.Redirect("~/data.aspx");

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["ResturaConnectionString1"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(s))
        {
            SqlCommand c = new SqlCommand("insert into dinner (name, price, img) values ('" + TextBox9.Text + "', " + int.Parse(TextBox10.Text) + " ,'" + TextBox11.Text + "')", conn);
            conn.Open();
            c.ExecuteNonQuery();
            Response.Redirect("~/data.aspx");

        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["ResturaConnectionString1"].ConnectionString;
        
        using (SqlConnection conn = new SqlConnection(s))
        {
            SqlCommand c = new SqlCommand("insert into drinks  (name, price, img) values ('" + TextBox13.Text + "', " + int.Parse(TextBox14.Text) + " ,'" + TextBox15.Text + "')", conn);
            conn.Open();
            c.ExecuteNonQuery();
            Response.Redirect("~/data.aspx");

        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["ResturaConnectionString1"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(s))
        {
            SqlCommand c = new SqlCommand("insert into users values ('" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "')", conn);
            conn.Open();
            c.ExecuteNonQuery();
            Response.Redirect("~/data.aspx");

        }
    }

}