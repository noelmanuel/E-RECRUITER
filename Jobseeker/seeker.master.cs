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
        lbljuser.Text = Session["juser"].ToString();
        proimg.ImageUrl = "~/profileimage/" + Session["juser"].ToString() + ".jpg";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/jshome.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/changejspass.aspx");
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
        Response.Redirect("~/Jobseeker/notification.aspx");
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
        Response.Redirect("~/JobSeeker/academic.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/examlogin.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/Communication.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/viewintschedule.aspx");
    }
}

