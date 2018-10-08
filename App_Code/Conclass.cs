using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public class Conclass
{
    public SqlConnection conclass()
    {
        SqlConnection Con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\recruiter.mdf;Integrated Security=True;user Instance=True");
        Con.Open();
        return Con;
    }
    public void CreateCommand(string str)
    {
        SqlCommand cmd = new SqlCommand(str, conclass());
        cmd.ExecuteNonQuery();

    }

    public SqlDataReader ReadData(string str)
    {

        SqlCommand cmd = new SqlCommand(str, conclass());

        return cmd.ExecuteReader();

    }

    public DataSet GetData(string str)
    {

        SqlDataAdapter da = new SqlDataAdapter(str, conclass());
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    public int ExecuteScalar(string str)
    {

        SqlCommand cmd = new SqlCommand(str, conclass());
        return (Convert.ToInt32(cmd.ExecuteScalar()));

    }
    public string Scalar(string str)
    {

        SqlCommand cmd = new SqlCommand(str, conclass());
        return (Convert.ToString(cmd.ExecuteScalar()));
    }
}
