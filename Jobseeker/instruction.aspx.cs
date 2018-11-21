using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Jobseeker_dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Write(" <script>window.alert('Exam Session Cancelled'); window.location='examlogin.aspx';</script>");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobseeker/seekerhome.aspx");
    }
}