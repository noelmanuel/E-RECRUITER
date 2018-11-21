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

public partial class Jobseeker_score : System.Web.UI.Page
{
    string str;
    Conclass con = new Conclass();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["r"].ToString();
        Label2.Text = Session["juser"].ToString();
        Label3.Text = Session["jp"].ToString();
        Label4.Text = Session["jb"].ToString();
        str = "select tqn,mark from result where usname='" + Session["juser"].ToString() + "'";
        rd = con.ReadData(str);
        if (rd.Read())
        {
            Label7.Text = rd.GetString(0);
            Label8.Text = rd.GetString(1);
        }

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Write(" <script>window.alert('Exam Session Out'); window.location='examlogin.aspx';</script>");
    }
   

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobseeker/seekerhome.aspx");
    }
}
