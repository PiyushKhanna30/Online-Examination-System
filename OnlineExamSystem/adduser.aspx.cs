using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class adduser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string cqry, aqry;
    HttpCookie ck;
    HttpCookie ad;

    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if (ad == null)
        {
            Response.Redirect("login.aspx");
        }

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);
        con.Open();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        //Checking whether username already exists
        cqry = "select * from login where username='" + name.Text + "'";
        cmd = new SqlCommand(cqry, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            mssg.Text = "Username already existes !";

        }
        else
        {
            con.Close();
            con.Open();
            aqry = "insert into login values('" + name.Text + "','" + pass.Text + "','user')";
            cmd = new SqlCommand(aqry, con);
            cmd.ExecuteNonQuery();
            mssg.Text = "Username successfully added.";
            name.Text = "";
            pass.Text = "";
        }
    }
}