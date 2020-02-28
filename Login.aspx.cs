using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["ResturaConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(s))
            {
                SqlCommand c = new SqlCommand("select * from users where username = '" + userText.Text + "' and password = '" + passText.Text + "'", conn);
                conn.Open();
            SqlDataAdapter sd = new SqlDataAdapter(c);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Session["USER"] = userText.Text;
                

                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = userText.Text;
                    Response.Cookies["PWD"].Value = passText.Text;
                }
                Response.Redirect("~/Data.aspx");
            }
            else
            {
                Label1.Text = "Wrong Data";
                Label1.ForeColor = Color.Red;
            }
        }
    }
}