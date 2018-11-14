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

public partial class Jobseeker_academic : System.Web.UI.Page

{
    Conclass con = new Conclass();
    String str;
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DropDownList2.Items.Insert(0, "Branch");
            str = "select course from course";
            rdr = con.ReadData(str);
            while (rdr.Read())
            {

                DropDownList1.Items.Add(rdr.GetString(0));
            }
            displaybranch();


        }
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs( Server.MapPath("~/resume/" + FileUpload1.FileName));
        str = "insert into academic values('" + Session["juser"].ToString() + "','" + matuni.Text + "','" + matcgpa.Text + "','" + matyear.Text + "','" + hsuni.Text + "','" + hscgpa.Text + "','" + hsyear.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + deguni.Text + "','" + degcgpa.Text + "','" + degyear.Text + "','" + addq.Text + "','" + wexp.Text + "')";
        con.CreateCommand(str);
        Response.Redirect("~/JobSeeker/seekerhome.aspx");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    private void displaybranch()
    {
        
        
        str = "select branch from coursedetails where course='" + DropDownList1.SelectedItem.ToString() + "'";
        rdr = con.ReadData(str);
        
        while (rdr.Read())
        {

            DropDownList2.Items.Add(rdr.GetString(0));
        }
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        displaybranch();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/academic.aspx");

    }
}