using System;
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

<<<<<<< HEAD
public partial class Jobprovider_provider : System.Web.UI.MasterPage
=======
public partial class Company_cmpmaster : System.Web.UI.MasterPage
>>>>>>> 40b9f16c53268ade2a8deb4ccf8eb6f904dc23e2
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lb1.Text = Session["cmpuser"].ToString();
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
<<<<<<< HEAD
        Response.Redirect("~/Jobprovider/provider.aspx");
=======
        Response.Redirect("~/Company/cmphome.aspx");
>>>>>>> 40b9f16c53268ade2a8deb4ccf8eb6f904dc23e2
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/about.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/contact.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/jslogin.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/addjob.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/addvacancy.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/interviewsch.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/finallist.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Communication.aspx");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/passchange.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/sendinterview.aspx");
    }
    protected void Button12_click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/Communication.aspx");
    }
}
