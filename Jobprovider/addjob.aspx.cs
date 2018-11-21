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

public partial class Jobprovider_addjob : System.Web.UI.Page
{
    string str;
    Conclass con = new Conclass();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select cmpname from jobproviderregn where compid='" + Session["jp"].ToString() + "'";
            rd = con.ReadData(str);
            if (rd.Read())

                lblprovider.Text = rd.GetString(0);
        }
       
    }
    protected void btnsub(object sender, EventArgs e)
    {
        str = "insert into jobdetails(compid,jobname)values('" + lblprovider.Text + "','" + jobadd.Text + "')";
        con.CreateCommand(str);
        jobadd.Text = "";
        Response.Write(" <script>window.alert('Job Added Successfully'); window.location='addjob.aspx';</script>");
       
    }
}