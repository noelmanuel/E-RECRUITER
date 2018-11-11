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

public partial class Jobprovider_communication : System.Web.UI.Page
{
    Conclass con = new Conclass();
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pnlinbox.Visible = true;
            pnlview.Visible = false;

            inbox();
        }
    }
    void inbox()
    {
        //103 for only display date
        string inbo = "select Id,FromId,ToId,Subject,Contents,convert(varchar(10),MDate,103) as MDate,MailStatus from MailDetails where ToId='" + Session["juser"].ToString() + "@erec.com" + "' ";
        //rdr = con.select(inbo);
        grdinbox.DataSource = con.GetData(inbo);
        grdinbox.DataBind();
        string count = "select count(*) from MailDetails where  ToId='" + Session["juser"].ToString() + "@erec.com" + "' and MailStatus=1 ";
        lblinboxstatus.Text = "(" + con.ExecuteScalar(count).ToString() + ")";

    }

    protected void lnkbtninbox_Click(object sender, EventArgs e)
    {
        pnlinbox.Visible = true;

        pnlview.Visible = false;
        inbox();
    }



    protected void grdinbox_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnlview.Visible = true;


        //commmandArgument for check the id is matching or not 
        string inbox = "select * from MailDetails where Id=" + int.Parse(e.CommandArgument.ToString());
        rdr = con.ReadData(inbox);
        if (rdr.Read())
        {

            lblviewcontent.Text = rdr["Contents"].ToString();
            btnreply.Visible = true;
            //update MailStatus=0 to 
            string update = "update MailDetails set MailStatus=0 where Id=" + int.Parse(e.CommandArgument.ToString());
            con.CreateCommand(update);
        }

    }



    protected void grdsentbox_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnlview.Visible = true;

        pnlinbox.Visible = false;
        string inbox = "select * from MailDetails where Id=" + int.Parse(e.CommandArgument.ToString());
        rdr = con.ReadData(inbox);
        if (rdr.Read())
        {

            lblviewcontent.Text = rdr["Contents"].ToString();
            btnreply.Visible = false;
            string update = "update MailDetails set MailStatus=0 where Id=" + int.Parse(e.CommandArgument.ToString());
            con.CreateCommand(update);
        }
    }
    protected void grdinbox_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string status = ((Label)e.Row.FindControl("lblstatus")).Text;
            if (status == "True")
                e.Row.BackColor = System.Drawing.Color.FromArgb(239, 239, 239);
            else
            {
                e.Row.BackColor = System.Drawing.Color.FromArgb(255, 255, 255);
            }

        }
    }
    protected void chkinboxselect_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdinbox.Rows)
        {
            if (chkinboxselect.Checked)
                ((CheckBox)row.FindControl("chkinboxselect")).Checked = true;
            else
                ((CheckBox)row.FindControl("chkinboxselect")).Checked = false;
        }
    }
    protected void lnkinboxdelete_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdinbox.Rows)
        {

            CheckBox check = (CheckBox)row.FindControl("chkinboxselect");
            if (check.Checked)
            {
                Label lbl = (Label)row.FindControl("lblId");
                string sent = "Delete from MailDetails where Id=" + int.Parse(lbl.Text);
                con.CreateCommand(sent);
                inbox();
            }

        }
    }
    protected void btnrpy(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/sentmail.aspx");

    }

    protected void inboxc(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/communcation.aspx");
    }
    protected void sentc(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/viewsent.aspx");
    }
    protected void composec(object sender, EventArgs e)
    {
        Response.Redirect("~/Jobprovider/sentmail.aspx");
    }
}