using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class _8_01_readData : System.Web.UI.Page
{
    string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "mdb\\mydb.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;

    protected void Page_Load(object sender, EventArgs e)
    {

        string str_conn = str_connection + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_conn);
        cnn.Open();

        str_sql = "SELECT * FROM tb_news order by news_order desc";

        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();

        while (datar.Read()) {
            Response.Write(datar["news_ttl"].ToString()+ "," +datar["news_order"].ToString() + "<br/>");
        }

        cnn.Close();
    }
}