using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Web.UI.HtmlControls;


public partial class _8_04_summary : System.Web.UI.Page
{
    string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "mdb\\mydb.mdb";
    OleDbConnection cnn, cnn2;
    OleDbCommand cmd, cmd2;
    OleDbDataReader datar, datar2;
    string str_sql;

    protected void Page_Load(object sender, EventArgs e)
    {

        string str_cnn = str_connection + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_cnn);
        cnn.Open();

        str_sql = "SELECT * FROM tb_chenji";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();

        //这一步是此程序设计的第2个巧妙点
        string[] arr_kmname = "cj_yuwen,cj_shuxue,cj_wuli,cj_yingyu,cj_huaxue".Split(',');
        TableCell asp_mytc;
        HtmlTableCell html_mytc;

        while (datar.Read())
        {
            foreach (string _skm in arr_kmname) {
                if (Convert.ToSingle(datar[_skm].ToString()) < 60) {
                        html_mytc = (HtmlTableCell)this.FindControl("tdfail_" + _skm); html_mytc.InnerText += datar["cj_name"].ToString()+",";
                        asp_mytc = (TableCell)this.FindControl("aspfail_" + _skm); asp_mytc.Text += datar["cj_name"].ToString() + ",";       
                }

                if (Convert.ToSingle(datar[_skm].ToString()) > 85) { 
                        html_mytc = (HtmlTableCell)this.FindControl("tdgood_" + _skm); html_mytc.InnerText += datar["cj_name"].ToString() + ",";
                        asp_mytc = (TableCell)this.FindControl("aspgood_" + _skm); asp_mytc.Text += datar["cj_name"].ToString() + ","; 
                }
                
            }

        }

        datar.Close();
        cnn.Close();

    }
}