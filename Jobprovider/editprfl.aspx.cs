using System;
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

public partial class Jobprovider_editprfl : System.Web.UI.Page
{
    String psql;
    Conclass obj = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_click(object sender, EventArgs e)
    {
        psql = "update jobproviderregn set cmpname='" + name.Text + "',cmpdesc='" + desc.Text + "',cmpaddr='" + addr.Text + "',cmpplace='" + place.Text + "',mob='" + mob.Text + "',email='" + email.Text + "',website='" + url.Text + "' where compid='" + Session["jp"].ToString() + "'";
             obj.CreateCommand(psql);
             
             Response.Write(" <script>alert('Profile Edited Successfully')</script>");
             Response.Redirect("~/Jobprovider/editprfl.aspx");

    }

    protected void reset(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/editprfl.aspx");
    }
}