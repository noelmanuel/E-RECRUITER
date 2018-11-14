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

public partial class Jobprovider_shortlistcv : System.Web.UI.Page
{
    string str, id,strr,idd;
    Conclass con = new Conclass();
    SqlDataReader rd;
    DataSet ds = new DataSet();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        strr = "select usname from result where finstatus='approve' and cv = 'pending' ";
           rd = con.ReadData(strr);
            if (rd.Read())
            {

                Label1.Text = rd.GetString(0);
                HyperLink1.NavigateUrl = "~/resume/" + rd.GetString(0) + ".pdf";
                
        }
       
            
            
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        str = "update result set cv='approve' where usname='" + rd.GetString(0) + "'";
        con.CreateCommand(str);
        Response.Redirect("~/Jobprovider/shortlistcv.aspx");
    }
}

        
        

    
