using System;
using System.IO;
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

public partial class Jobprovider_providerregn : System.Web.UI.Page
{
    String psql;
    String p;
    SqlDataReader rdr;
    Conclass obj = new Conclass();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub(object sender, EventArgs e)
    {
        p = "select usname from login where usname='" + TextBox9.Text + "'";
        rdr = obj.ReadData(p);
        if (rdr.Read())
        {
            lbluser.Text = "Username Already Existed";
        }
        else
        {
            string m = TextBox9.Text;
            
            FileUpload1.SaveAs(Server.MapPath("~/D:/E-RECRUITER/profileimage/" + FileUpload1.FileName));
            psql = "insert into jobproviderregn(compid,cmpname,cmpdesc,cmpaddr,cmpplace,mob,email,website,status)values('" + TextBox9.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','pending')";
            obj.CreateCommand(psql);
            psql = "insert into login values('job provider','" + TextBox9.Text + "','" + TextBox10.Text + "')";
            obj.CreateCommand(psql);
        }
        Response.Write(" <script>window.alert('REGISTRATION WAS SUCCESSFULL'); window.location='providerregn.aspx';</script>");


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