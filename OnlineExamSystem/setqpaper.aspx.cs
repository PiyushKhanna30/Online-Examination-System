﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class setqpaper : System.Web.UI.Page
{
    HttpCookie ad;
    SqlConnection con;
    SqlCommand cmd;

    SqlCommand rcmd;
    SqlDataReader rdr;

    SqlCommand qcmd;
    SqlDataReader qdr;

    string qry, nqry, test;
    int qid, ans, flag = 1;

    protected void Page_Load(object sender, EventArgs e)
    {
        ad = Request.Cookies["acook"];
        if(ad==null)
        {
            Response.Redirect("login.aspx");
        }
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);
        //con = new SqlConnection("Data Source=.;AttachDbFileName=|DataDirectory|\\myDB2.mdf;Integrated Security=True;User Instance=True");

        msg7.Text = Request.QueryString["msg"];
    }
    protected void paperview_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        msg1.Text = "";
        msg2.Text = "";
        msg3.Text = "";
        msg4.Text = "";
        msg5.Text = "";
        msg6.Text = "";
        msg7.Text = "";

        //get the right option answer for the question
        if (radiobutton1.Checked)
            ans = 1;
        if (radiobutton2.Checked)
            ans = 2;
        if (radiobutton3.Checked)
            ans = 3;
        if (radiobutton4.Checked)
            ans = 4;

        if (testlist.Visible)
        {
            //this works if user chooses from the list of available tests
            test = testlist.Text;
        }
        else
        {
            if (testname.Text == "")
            {
                //to check whether testbox has been left blanked?
                msg1.Text = "Enter the test name";
                flag = 0;
            }
            else
            {
                //check whether test name already exists
                con.Open();
                nqry = "select * from question where settype='" + testname.Text + "'";
                rcmd = new SqlCommand(nqry, con);
                rdr = rcmd.ExecuteReader();
                if(rdr.HasRows)
                {
                    msg1.Text = "TEst name already exists";
                    flag = 0;
                }
                test = testname.Text;
                con.Close();
            }
        }
        //check for empty boxes
        if (question.Text=="" || question.Text==" ")
        {
            msg2.Text = "Enter the question";
            flag = 0;
        }
        if(opt1.Text=="" || opt1.Text==" ")
        {
            msg3.Text = "Enter the option 1";
            flag = 0;
        }
        if (opt2.Text == "" || opt2.Text == " ")
        {
            msg4.Text = "Enter the option 1";
            flag = 0;
        }
        if (opt3.Text == "" || opt3.Text == " ")
        {
            msg5.Text = "Enter the option 1";
            flag = 0;
        }
        if (opt4.Text == "" || opt4.Text == " ")
        {
            msg6.Text = "Enter the option 1";
            flag = 0;
        }
        if (flag!=0)
        {
            con.Open();
            qcmd = new SqlCommand("Select MAX(qid) from question",con);
            qdr = qcmd.ExecuteReader();
            qdr.Read();

            if(qdr.IsDBNull(0))
            {
                qid = 1;
            }
            else
            {
                qid = Convert.ToInt16(qdr.GetValue(0))+1;
            }
            con.Close();

            con.Open();
            qry = "insert into question values (" + qid + ",'" + question.Text + "','" + test + "','" + opt1.Text + "','" + opt2.Text + "','" + opt3.Text + "','" + opt4.Text + "'," + ans + ")";
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
            msg7.Text = "Question Submitted";
            Response.Redirect("setqpaper.aspx?msg='" + msg7.Text + "'");
        }
    }
    protected void ntest_click(object sender, EventArgs e)
    {
        if(testlist.Visible)
        {
            testname.Visible = true;
            testlist.Visible = false;
            ntest.Text = "Old Test";
        }
        else
        {
            testname.Visible = false;
            testlist.Visible = true;
            ntest.Text = "New Test";
        }
    }
}