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

public partial class Jobprovider_finallist : System.Web.UI.Page
{
    string str, id;
    Conclass con = new Conclass();
    SqlDataReader rd;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select regno,compid,jobtitle,mark,status from result where finstatus='pending'";
            ds = con.GetData(str);
            Gridfinallist.DataSource = ds;
            Gridfinallist.DataBind();
        }

    }
    protected void Gridfinallist_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = Gridfinallist.SelectedDataKey.Value.ToString();
        str = "update result set finstatus='approve' where regno='" + id + "'";
        con.CreateCommand(str);
    }
}