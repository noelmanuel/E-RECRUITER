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

public partial class Admin_examsch : System.Web.UI.Page
{
    SqlDataReader rd;
    Conclass con = new Conclass();
    string s, str, id, sq;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select cmpname from jobproviderregn";
            rd = con.ReadData(str);
            while (rd.Read())
            {
                ddcomp.Items.Add(rd.GetString(0));
            }
            displayjobtitle();
        }
    }
    private void displayjobtitle()
    {
        ddjob.Items.Clear();

        String s = "select compid from jobproviderregn where cmpname='" + ddcomp.SelectedItem.ToString() + "'";
        rd = con.ReadData(s);
        if (rd.Read())
        {
            id = rd.GetValue(0).ToString();
        }
        s = "select j.jobname from jobdetails j,jobproviderregn c where j.compid=c.compid and j.compid='" + id + "'";
        rd = con.ReadData(s);
        while (rd.Read())
        {
            ddjob.Items.Add(rd.GetString(0));
        }
    }
    protected void ddcomp_SelectedIndexChanged(object sender, EventArgs e)
    {
        displayjobtitle();
    }


    protected void btnadd_Click(object sender, EventArgs e)
    {
        sq = "insert into schexam(compid,jobtitle,dt,syll)values('" + ddcomp.SelectedItem + "','" + ddjob.SelectedItem + "','" + txtdt.Text + "','" + txtsyll.Text + "')";
        con.CreateCommand(sq);
        Response.Write(" <script>alert('Check Schedule')</script>");

    }



    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session["comp"] = ddcomp.SelectedItem.ToString();
        Session["jtitle"] = ddjob.SelectedItem.ToString();
        //Response.Redirect("~/Admin/sendexsch.aspx");
    }
}
