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

public partial class Jobseeker_sentmail : System.Web.UI.Page
{
    Conclass con = new Conclass();
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        pnlcompose.Visible = true;
        lblcomposefrom.Text = Session["juser"].ToString() + "@erec.com";
       
        
        string s = "select usname from login where usname !='job seeker' ";
        rdr = con.ReadData(s);
        
            drpcomposeto.Items.Add("ADMINISTRATOR" );
        
    }
    protected void inboxc(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobseeker/communication.aspx");//inbox
    }
    protected void sentc(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobseeker/viewsent.aspx");//viewsentmsg
    }
    protected void composec(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobseeker/sentmail.aspx");
    }
    protected void clear(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobseeker/communication.aspx");//compose mail
    }
    protected void butsub(object sender, EventArgs e)
    {
        
        if (String.IsNullOrEmpty(TextBox3.Text) || String.IsNullOrEmpty(TextBox4.Text))
        {
            lblmsg.Visible = true;
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "* Required Fields";
        }
        
        else
        {
            string sent = "insert into MailDetails(FromId,ToId,Subject,Contents,MDate,MailStatus) values('" + lblcomposefrom.Text + "','" + drpcomposeto.SelectedItem.ToString() + "','" + TextBox3.Text + "','" + TextBox4.Text + "',getdate(),'1') ";
            con.CreateCommand(sent);
            lblmsg.Visible = true;

           
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Mail Sent";
        }
    }
}
