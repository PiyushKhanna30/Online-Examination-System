using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class deleteuser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    HttpCookie ad;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if(ad==null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void duser_click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);
        con.Open();

        qry = "delete from login where username='" + userlist.Text + "'";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();

        Response.Write("<script>alert('User deleted Successfully')</script>");
        Response.Redirect("deleteuser.aspx");
    }
}