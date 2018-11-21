﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Jobseeker_examlogin : System.Web.UI.Page
{
    string str, id;
    SqlDataReader rd;
    Conclass con = new Conclass();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            str = "select cmpname from jobproviderregn";
            rd = con.ReadData(str);
            while (rd.Read())
            {
                ddcomp.Items.Add(rd.GetString(0));
            }
            displayjob();
        }

    }

    
    private void displayjob()
    {
        ddjob.Items.Clear();

        String s = "select compid from jobproviderregn where cmpname='" + ddcomp.SelectedItem.ToString() + "'";
        rd = con.ReadData(s);
        if (rd.Read())
        {
            id = rd.GetValue(0).ToString();
        }
        s = "select j.jobname from jobdetails j,jobproviderregn c where j.compid=c.compid and j.compid='" + id + "'";
        rd = con.ReadData(s);
        while (rd.Read())
        {
            ddjob.Items.Add(rd.GetString(0));
        }
    }
    protected void ddcomp_SelectedIndexChanged(object sender, EventArgs e)
    {
        displayjob();
    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        
        string j = "select regno from result where usname='" + Session["juser"].ToString() +"'";
        
       
        rd = con.ReadData(j);
        if(rd.Read())
        {

            Response.Write(" <script>alert('Exam already attended')</script>");
            txtrn.Text = "";
        }
        else
        {
            Session["r"] = txtrn.Text;
            Session["jp"] = ddcomp.SelectedItem.ToString();
            Session["jb"] = ddjob.SelectedItem.ToString();


            Response.Redirect("~/Jobseeker/takequiz.aspx");
        }
    }
    protected void exit(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobseeker/seekerhome.aspx");
    }
}