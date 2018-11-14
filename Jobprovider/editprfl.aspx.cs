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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void update(object sender, EventArgs e)
    {
        String psql;
        Conclass obj = new Conclass();
        psql = "update jobproviderregn set cmpname='" + name.Text + "',cmpdesc='" + desc.Text + "',cmpaddr='" + addr.Text + "',cmpplace='" + place.Text + "',mob='" + mob.Text + "',email='" + email.Text + "',website='" + url.Text + "' where compid='" + Session["jp"].ToString() + "'";
             obj.CreateCommand(psql);
             name.Text = "";
             desc.Text = "";
             addr.Text = "";
             place.Text = "";
             mob.Text = "";
             email.Text = "";
             url.Text = "";
             Response.Write(" <script>alert('Profile Edited Successfully')</script>");
             

    }

    protected void reset(object sender, EventArgs e)
    {
        Response.Redirect("~/editprfl.aspx");
    }
   
   
   
}