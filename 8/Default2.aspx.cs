using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string str_provider = "Provider=Microsoft.Jet.OLEDB.4.0;";
        string str_source ="Data Source="+ MapPath("~/mdb/mydb.mdb");
        string str_connection = str_provider + str_source;

        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;

        string str_sql = "SELECT news_ttl from TB_NEWS";

        cnn = new OleDbConnection(str_connection);
        cnn.Open();

        cmd = new OleDbCommand(str_sql, cnn);

        datar = cmd.ExecuteReader();


        while (datar.Read()) {
            div_reader.InnerHtml += datar["news_ttl"].ToString() + "<br/>";

        }


        cnn.Close();
    }
}