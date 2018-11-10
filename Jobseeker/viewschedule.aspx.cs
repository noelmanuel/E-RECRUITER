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

public partial class Jobseeker_viewschedule : System.Web.UI.Page
{
    string str, s1;
    Conclass con = new Conclass();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        str = "select se.regno,s.compid, s.jobtitle, s.dt, s.syll from schexam AS s cross join sendexamsch as se where(se.usname = '" + Session["juser"].ToString() + "' and s.jobtitle='" + Session["j"].ToString() + "')";
        rd = con.ReadData(str);
        if (rd.Read())
        {
            lb5.Text = rd.GetString(0).ToString();
            lb1.Text = rd.GetString(1).ToString();
            lb2.Text = rd.GetString(2).ToString();
            lb3.Text = rd.GetDateTime(3).ToString();
            lb4.Text = rd.GetString(4).ToString();

        }
    }
}
