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
public partial class Jobprovider_interview : System.Web.UI.Page
{
    string str,st;
    Conclass obj = new Conclass();
    SqlDataReader rd,rf;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select jobname from jobdetails where compid='" + Session["jp"].ToString() + "'";
            rd = obj.ReadData(str);
            while (rd.Read())
            {
                title.Items.Add(rd.GetString(0));


            }
        }
    }
    protected void btnsub(object sender, EventArgs e)
    {
        str = "insert into schinterview(compid,jobtitle,place,date,time,name)values('" + Session["jp"].ToString() + "','" + title.SelectedItem + "','" + place.Text + "','" + date.Text + "','" + time.Text + "','" + ddname.Text + "')";
        obj.CreateCommand(str);
        place.Text = "";
        date.Text = "";
        time.Text = "";
        Response.Write(" <script>alert('Interview Schedule Added Successfully')</script>");

    }
    protected void reset(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/interview.aspx");

    }
    protected void title_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddname.Items.Clear();
        st = " select usname from result where jobtitle='" + title.SelectedItem.ToString() + "' and finstatus = 'approve'";
        rf = obj.ReadData(st);
        while (rf.Read())
        {
            ddname.Items.Add(rf.GetString(0));
        }

    }
}