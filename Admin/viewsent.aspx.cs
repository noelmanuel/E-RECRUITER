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

public partial class Admin_viewsent : System.Web.UI.Page
{
    Conclass con = new Conclass();
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            pnlview.Visible = false;
            sentmail();
        }
    }

    void sentmail()
    {
        string sent = "select Id,FromId,ToId,Subject,Contents,convert(varchar(10),MDate,103) as MDate,MailStatus from  MailDetails where FromId='ADMINISTRATOR'";
        grdsentbox.DataSource = con.GetData(sent);
        grdsentbox.DataBind();
        string count = "select count(*) from MailDetails where  FromId='ADMINISTRATOR'";
        lblsentstatus.Text = "(" + con.ExecuteScalar(count).ToString() + ")";
    }

    protected void lnkbtnsentmail_Click(object sender, EventArgs e)
    {
        pnlsent.Visible = true;

        pnlview.Visible = false;
        sentmail();

    }




    protected void grdinbox_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnlview.Visible = true;

        pnlsent.Visible = false;

        //commmandArgument for check the id is matching or not 
        string inbox = "select * from MailDetails where Id=" + int.Parse(e.CommandArgument.ToString());
        rdr = con.ReadData(inbox);
        if (rdr.Read())
        {
            lblviewto.Text = rdr["ToId"].ToString();
            lblviewcontent.Text = rdr["Contents"].ToString();
            

            //update MailStatus=0 to 
            string update = "update MailDetails set MailStatus=0 where Id=" + int.Parse(e.CommandArgument.ToString());
            con.CreateCommand(update);
        }

    }



    protected void grdsentbox_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        pnlview.Visible = true;

        string inbox = "select * from MailDetails where Id=" + int.Parse(e.CommandArgument.ToString());
        rdr = con.ReadData(inbox);
        if (rdr.Read())
        {
            
            lblviewcontent.Text = rdr["Contents"].ToString();
                        
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
                e.Row.BackColor = System.Drawing.Color.ForestGreen;
            else
            {
                e.Row.BackColor = System.Drawing.Color.DimGray;
            }

        }
    }


    protected void lnksentdelete_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdsentbox.Rows)
        {

            CheckBox check = (CheckBox)row.FindControl("chksentmail");
            if (check.Checked)
            {
                Label lbl = (Label)row.FindControl("lblId");
                string sent = "Delete from MailDetails where Id=" + int.Parse(lbl.Text);
                con.CreateCommand(sent);
                sentmail();
            }

        }
    }
    protected void chksentselect_CheckedChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in grdsentbox.Rows)
        {
            if (chksentselect.Checked)
                ((CheckBox)row.FindControl("chksentmail")).Checked = true;
            else
                ((CheckBox)row.FindControl("chksentmail")).Checked = false;
        }
    }
    protected void inboxc(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/communication.aspx");
    }
    protected void sentc(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/viewsent.aspx");
    }
    protected void composec(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/sentmail.aspx");
    }
}