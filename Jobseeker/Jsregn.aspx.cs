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

public partial class Jobseeker_Jsregn : System.Web.UI.Page
{
    String sql;
    String s;
    SqlDataReader rdr;
    Conclass obj = new Conclass();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub(object sender, EventArgs e)
    {
        s = "select usname from login where usname='" + TextBox1.Text + "'";
        rdr = obj.ReadData(s);
        if (rdr.Read())
        {
            lbluser.Text = "Username Already Existed";
        }
        else
        {
            sql = "insert into jobseekerregn(usname,name,dob,caddr,gen,adhaar,mob,landline,email,status)values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "','" + RadioButtonList1.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','pending')";
            obj.CreateCommand(sql);
            sql = "insert into login values('job seeker','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            obj.CreateCommand(sql);
        }

        Response.Redirect("~/Jslogin.aspx");

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
    protected void Button4_click(object sender, EventArgs e)
    {
        Response.Redirect("~/about.aspx");
    }

    protected void Button7_click(object sender, EventArgs e)
    {
        Response.Redirect("~/about.aspx");
    }
    protected void reset(object sender, EventArgs e)
    {
        Response.Redirect("Jobseeker/jsregn.aspx");
    }
}