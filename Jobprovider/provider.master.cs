﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;


public partial class Jobprovider_provider : System.Web.UI.MasterPage

{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        lblprovider.Text = Session["jp"].ToString();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        Response.Redirect("~/Jobprovider/providerhome.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/about.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/contact.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/jslogin.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/addjob.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/vacancy.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/interview.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/finallist.aspx");
    }
    protected void btned_c(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/editprfl.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/passchange.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/communication.aspx");
    }
    protected void Button12_click(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/Comn.aspx");
    }
}
