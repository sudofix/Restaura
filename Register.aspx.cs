using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registerButton_Click(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["ResturaConnectionString1"].ConnectionString;
        if (passText == tbCPass)
        {
            using (SqlConnection conn = new SqlConnection(s))
            {
                SqlCommand c = new SqlCommand("insert into users values ('" + userText.Text + "','" + passText.Text + "','" + tbEmail.Text + "','" + tbName.Text + "')", conn);
                conn.Open();
                c.ExecuteNonQuery();
                Label1.Text = "Done";
                Label1.ForeColor = Color.Green;
            }
        }
        else
        {
            Label1.Text = "Failed";
            Label1.ForeColor = Color.Red;
        }
    }
}