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

public partial class Admin_approveprovider : System.Web.UI.Page
{
    String prsql, prstr, pid;
    DataSet pr = new DataSet();
    Conclass probj = new Conclass();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            prov();

    }
    public void prov()
    {
        prsql = "select compid,cmpname,email,website from jobproviderregn where status='pending'";
        pr = probj.GetData(prsql);
        Gridproviderapprove.DataSource = pr;
        Gridproviderapprove.DataBind();

    }
    protected void Gridproviderapprove_SelectedIndexChanged(object sender, EventArgs e)
    {
        pid = Gridproviderapprove.SelectedDataKey.Value.ToString();
        prstr = "update jobproviderregn set status='approved' where compid='" + pid + "'";
        probj.CreateCommand(prstr);
        Response.Write(" <script>window.alert('Jobprovider Approved'); window.location='approveprovider.aspx';</script>");
        prov();

    }

}