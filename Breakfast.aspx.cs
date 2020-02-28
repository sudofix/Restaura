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

public partial class Breakfast : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String s = ConfigurationManager.ConnectionStrings["ResturaConnectionString1"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(s))
        {
            using (SqlCommand cmd = new SqlCommand("select * from breakfast", conn))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                }
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(((Button)sender).AccessKey);

        String s = ConfigurationManager.ConnectionStrings["ResturaConnectionString1"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(s))
        {
            SqlCommand c = new SqlCommand("insert into cart (name, price) select name, price from breakfast where id = " + id, conn);
            conn.Open();
            c.ExecuteNonQuery();

        }

    }
}