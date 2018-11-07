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

public partial class Admin_sentmail : System.Web.UI.Page
{
    Conclass con = new Conclass();
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        pnlcompose.Visible = true;
        lblcomposefrom.Text = "ADMINISTRATOR";
        
        string s = "select usname from login where usname !='admin' ";
        rdr = con.ReadData(s);
        while (rdr.Read())
        {
            drpcomposeto.Items.Add(rdr["usname"].ToString() + "@erec.com");
        }
    }
    protected void inboxc(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/communication.aspx");//inbox
    }
    protected void sentc(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/viewsent.aspx");//viewsentmsg
    }
    protected void composec(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/sentmail.aspx");
    }
    protected void clear(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/communication.aspx");//compose mail
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