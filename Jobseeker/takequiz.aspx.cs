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

public partial class Jobseeker_takequiz : System.Web.UI.Page
{
    string str;
    string jobtitle;
    string[] choice = new string[200];
    int score = 0, index = 0, jobid;

    SqlDataReader reader;
    DataSet ds = new DataSet();
    Conclass obj = new Conclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["r"].ToString();
        //Label2.Text = Convert.ToInt32(index);
        Label2.Text = Session["juser"].ToString();
        if (!IsPostBack)
        {
            //DataSet ds = new DataSet();
            //str="select code,qns,ch1,ch2,ch3,ch4 from examdb";
            //grdquestions.DataSource = db.data_set(str);
            //grdquestions.DataBind();
            str = "select code,qns,ch1,ch2,ch3,ch4 from examdb where jobtitle='" + Session["jb"].ToString() + "' and compid='" + Session["jp"].ToString() + "'";
            ds = obj.GetData(str);
            grdquestions.DataSource = ds;
            grdquestions.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string ss;
        int x = grdquestions.Rows.Count;
        foreach (GridViewRow r in grdquestions.Rows)
        {
            string opt;
            RadioButton radio1;
            RadioButton radio2;
            RadioButton radio3;
            RadioButton radio4;
            radio1 = (RadioButton)r.FindControl("rdb1");
            radio2 = (RadioButton)r.FindControl("rdb2");
            radio3 = (RadioButton)r.FindControl("rdb3");
            radio4 = (RadioButton)r.FindControl("rdb4");




            if ((radio1.Checked == true || radio2.Checked == true) || radio3.Checked == true || radio4.Checked == true)
            {
                if (radio1.Checked == true)
                {
                    // choice[index++] = radio1.FindControl("rdb1").ToString();
                    //opt = "choice1";
                    str = "select ch1 from examdb where jobtitle='" + Session["jb"].ToString() + "'";
                    reader = obj.ReadData(str);
                    if (reader.Read())
                    {
                        choice[index++] = radio1.Text;
                        //Label1.Text = reader.GetSqlValue(0).ToString();
                    }


                }
                else if (radio2.Checked == true)
                {
                    //choice[index++] = radio2.FindControl("rdb2").ToString();
                    //opt = "choice2";
                    str = "select ch2 from examdb where jobtitle='" + Session["jb"].ToString() + "'";
                    reader = obj.ReadData(str);
                    if (reader.Read())
                    {
                        choice[index++] = radio2.Text;
                    }


                }
                else if (radio3.Checked == true)
                {
                    //opt = "choice3";
                    str = "select ch3 from examdb where jobtitle='" + Session["jb"].ToString() + "'";
                    reader = obj.ReadData(str);
                    if (reader.Read())
                    {
                        choice[index++] = radio3.Text;
                    }

                    //choice[index++] = radio2.FindControl("rdb3").ToString();
                }
                else if (radio4.Checked == true)
                {
                    //opt = "choice4";
                    str = "select ch4 from examdb where jobtitle='" + Session["jb"].ToString() + "'";
                    reader = obj.ReadData(str);
                    if (reader.Read())
                    {
                        choice[index++] = radio4.Text;
                    }

                    //choice[index++] = radio2.FindControl("rdb4").ToString();
                }
            }
        }


        index = 0;
        str = "select ans from examdb where jobtitle='" + Session["jb"].ToString() + "'";
        reader = obj.ReadData(str);
        while (reader.Read())
        {
            if (choice[index++] == reader.GetString(0))
                score++;
        }

        str = "insert into result values('" + Session["r"].ToString() + "','" + Session["jp"].ToString() + "','" + Session["jb"].ToString() + "','" + index + "','" + score + "','pending','" + Session["juser"].ToString() + "','pending')";
        obj.CreateCommand(str);
        //db.database_command(str);
        //Session["total"] = score;
        Response.Redirect("score.aspx");

    }



    protected void grdquestions_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/JobSeeker/jshome.aspx");
    }
}
