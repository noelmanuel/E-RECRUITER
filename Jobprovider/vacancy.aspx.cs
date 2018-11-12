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
public partial class Jobprovider_vacancy : System.Web.UI.Page
{
    String sql, str;
    Conclass obj = new Conclass();
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            str = "select jobname from jobdetails where compid='" + Session["jp"].ToString() + "' ";
            rd = obj.ReadData(str);
            while (rd.Read())
            {
                title.Items.Add(rd.GetString(0));
            }

            str = "select course from course";
            rd = obj.ReadData(str);
            while (rd.Read())
            {
                course.Items.Add(rd.GetString(0));
            }

        }
    }
    protected void btnsub(object sender, EventArgs e)
    {
        sql = "insert into vacancyadd(compid,jobtitle,elgcourse,elgbranch,process,salary,loc,des,nvac,period)values('" + Session["jp"].ToString() + "','" + title.SelectedItem + "','" + course.SelectedItem + "','" + branch.SelectedItem + "','" + process.Text + "','" + salary.Text + "','" + loc.Text + "','" + exp.Text + "','" + vac.Text + "','" + period.Text + "')";
        obj.CreateCommand(sql);
        process.Text = "";
        salary.Text = "";
        loc.Text = "";
        exp.Text = "";
        vac.Text = "";
        period.Text = "";
        Response.Write(" <script>alert('Vacancy Added Successfully')</script>");

    }
    protected void course_SelectedIndexChanged(object sender, EventArgs e)
    {
        branch.Items.Clear();
        str = "select branch from coursedetails where course='" + course.SelectedItem.ToString() + "'";
        rd = obj.ReadData(str);
        while (rd.Read())
        {
            branch.Items.Add(rd.GetString(0));
        }
    }
    protected void title_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void branch_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void reset(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/vacancy.aspx");

    }
}