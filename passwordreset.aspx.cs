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

public partial class passwordreset : System.Web.UI.Page
{
    String sql;
    String s,p,q;
    SqlDataReader rdr,rfr,rgr;
    Conclass obj = new Conclass();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub(object sender, EventArgs e)
    {
        s = "select ustype from login where usname='" + txtpssreset.Text + "'";
        rdr = obj.ReadData(s);
        if (rdr.Read())
        {
            String utype = rdr.GetString(0);
                if (utype == "admin")
                {
                    lbladmin.Text = "You cannot change admin password";
                }
                else if (utype == "job seeker")
                {
                     p = "select landline from jobseekerregn where usname='" + txtpssreset.Text + "'";
                    rfr = obj.ReadData(p);
                    if (rfr.Read())
                        {
                            string landline = rfr.GetString(0);
                            string username=txtsec.Text;
                                if (landline == username)
                                {
                     
                                    q = "select pass from login where usname='" + txtpssreset.Text + "'";
                                    rgr = obj.ReadData(q);
                                    rgr.Read();
                                    string pass = rgr.GetString(0);
                                    lblpassgot.Text = pass;
                                }
                                else 
                                {
                                    lblsec.Text = "incorrect Security Answer";
                                    
                                }
                                
                        }
             

                
                }
        }
        else
        {
            lblus.Text = "No User Found";
        }

    }
    protected void reset(object sender, EventArgs e)
    {
        Response.Redirect("~/passwordreset.aspx");
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
}