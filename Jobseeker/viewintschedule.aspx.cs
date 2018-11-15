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

public partial class Jobseeker_viewintschedule : System.Web.UI.Page
{
    String sql, str1, cid;
    DataSet ds = new DataSet();
    Conclass obj = new Conclass();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
            ints();

    }

    public void ints()
    {
        sql = "select name,compid,jobtitle,place,date,time,name from schinterview where name = '" + Session["juser"].ToString() + "'";
        ds = obj.GetData(sql);
        Gridjsapprove.DataSource = ds;
        Gridjsapprove.DataBind();

    }
}