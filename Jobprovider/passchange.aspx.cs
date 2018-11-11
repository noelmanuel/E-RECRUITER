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

public partial class Jobprovider_passchange : System.Web.UI.Page
{
    string str;
    Conclass con = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub(object sender, EventArgs e)
    {

        str = "update login set pass='" + newpass.Text + "' where usname='" + user.Text + "' and pass='" + oldpass.Text + "'";
        con.CreateCommand(str);
        Response.Write(" <script>alert('Password Changed Successfully')</script>");
    }
    protected void reset(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/passchange.aspx");

    }
    
}