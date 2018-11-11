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
public partial class Admin_presult : System.Web.UI.Page
{
    string str, id;
    Conclass con = new Conclass();
    SqlDataReader rd;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            appresult();
    }
    public void appresult()
    {
        str = "select regno,compid,jobtitle,mark from result where status='pending'";
        ds = con.GetData(str);
        gd1.DataSource = ds;
        gd1.DataBind();

    }
    protected void gd1_SelectedIndexChanged(object sender, EventArgs e)
    {
        id = gd1.SelectedDataKey.Value.ToString();
        str = "update result set status='qualified' where regno='" + id + "'";
        con.CreateCommand(str);
        appresult();
    }
}
