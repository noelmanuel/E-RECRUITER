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

public partial class Admin_approvejs : System.Web.UI.Page
{
    String sql, str1, cid;
    DataSet ds = new DataSet();
    Conclass obj = new Conclass();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            appjs();
    }
    public void appjs()
    {
        sql = "select usname,name,email from jobseekerregn where status='pending'";
        ds = obj.GetData(sql);
        Gridjsapprove.DataSource = ds;
        Gridjsapprove.DataBind();

    }
    protected void Gridjsapprove_SelectedIndexChanged(object sender, EventArgs e)
    {
        cid = Gridjsapprove.SelectedDataKey.Value.ToString();
        str1 = "update jobseekerregn set status='approved' where usname='" + cid + "'";
        obj.CreateCommand(str1);
        Response.Write(" <script>window.alert('Jobseeker Approved'); window.location='approveprovider.aspx';</script>");
        appjs();

    }
}