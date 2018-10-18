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
public partial class jslogin : System.Web.UI.Page
{
    String sql;
    String str;
    SqlDataReader rdr;
    Conclass obj = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        str = "select ustype from login where usname='" + txtuname.Text + "' and pass='" + txtpass.Text + "'";
        rdr = obj.ReadData(str);
        if (rdr.Read())
        {
            String utype = rdr.GetString(0);
            if (utype == "admin")
            {
                Response.Redirect("~/Admin/adminhome.aspx");
            }
            else if (utype == "job seeker")
            {
                Session["juser"] = txtuname.Text;
                str = "select status from jobseekerregn where usname='" + txtuname.Text + "'";

                rdr = obj.ReadData(str);
                if (rdr.Read())
                {
                    String st = rdr.GetString(0);
                    if (st == "approved")
                        Response.Redirect("~/JobSeeker/seekerhome.aspx");
                }

            }
            else if (utype == "company")
            {
                Session["cmpuser"] = txtuname.Text;
                str = "select status from compregn where compid='" + txtuname.Text + "'";

                rdr = obj.ReadData(str);
                if (rdr.Read())
                {
                    String st = rdr.GetString(0);
                    if (st == "approved")
                        Response.Redirect("~/Jobprovider/providerhome.aspx");
                }
            }
            else
            {

            }


        }
        else
            Label1.Text = "invalid username or password";
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
        
    }

    protected void Button7_click(object sender, EventArgs e)
    {
        Response.Redirect("~/about.aspx");
    }
}
