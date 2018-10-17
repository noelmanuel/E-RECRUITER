using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Jobseeker_seeker : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lb1.Text = Session["juser"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/jshome.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/cs.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/about.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/contact.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/jslogin.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/notification.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/examschedule.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/examlogin.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/shortlist.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/finalresult.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/Communication.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/passchange.aspx");
    }
}

