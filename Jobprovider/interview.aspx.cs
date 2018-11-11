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
    string str;
    Conclass con = new Conclass();
    SqlDataReader rd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select jobname from jobdetails where compid='" + Session["juser"].ToString() + "'";
            rd = con.ReadData(str);
            while (rd.Read())
            {
                title.Items.Add(rd.GetString(0));


            }
        }
    }
    protected void btnsub(object sender, EventArgs e)
    {
        str = "insert into schinterview(compid,jobtitle,place,date,time)values('" + Session["juser"].ToString() + "','" + title.SelectedItem + "','" + place.Text + "','" + date.Text + "','" + time.Text + "')";
        con.CreateCommand(str);
        place.Text = "";
        date.Text = "";
        time.Text = "";

    }
    protected void reset(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/interview.aspx");

    }
}