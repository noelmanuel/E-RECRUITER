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

public partial class Jobseeker_report : System.Web.UI.Page
{
    Conclass con = new Conclass();
    string r;
    SqlDataReader sql;

    protected void Page_Load(object sender, EventArgs e)
    {
        r = "select report from report";
        sql = con.ReadData(r);
        while(sql.Read())
        {
            DropDownList1.Items.Add(sql.GetString(0));
        }



    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Write(" <script>window.alert('Exam Session Cancelled'); window.location='examlogin.aspx';</script>");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobseeker/seekerhome.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string s = "insert into report(report,msg)values('" + DropDownList1.SelectedItem + "','" + TextBox1.Text +"')";
        con.CreateCommand(s);
        Response.Write("<script>window.alert('reported successfully'); window.location='seekerhome.aspx'; </script>");
    }
}