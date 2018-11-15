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

public partial class notification : System.Web.UI.Page
{
    Conclass con = new Conclass();
    String st;

    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        st = "select compid,jobtitle,salary,loc,des,elgcourse,elgbranch from vacancyadd";
        ds = con.GetData(st);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void Button1_click(object sender, EventArgs e)
    {
        Response.Redirect("~/jslogin.aspx");
    }
    protected void Button2_click(object sender, EventArgs e)
    {
        Response.Redirect("~/contact.aspx");
    }
    protected void Button3_click(object sender, EventArgs e)
    {
        Response.Redirect("~/about.aspx");
    }
    protected void Button6_click(object sender, EventArgs e)
    {
        Response.Redirect("~/notification.aspx");
    }
    protected void Button4_click(object sender, EventArgs e)
    {

    }
}