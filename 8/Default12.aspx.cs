using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default12 : System.Web.UI.Page
{    string str_cnn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "mdb\\mydb.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        //构建表
        //【语文】不及格，【语文】优秀，【数学】不及格，【数学】优秀
        //[Good]_cj_yuwen,[Fail]_cj_yuwen,[Good]_cj_shuxue,[Fail]_cj_shuxue
        string[] _sarr1 = { "Good", "Fail" };
        string[] _sarr2 = { "优秀", "不及格" };
        string[] _sarr_km = { "cj_yuwen", "cj_shuxue", "cj_huaxue", "cj_wuli", "cj_yingyu" };
        string[] _sarr_kmname = { "语文", "数学", "化学", "物理", "英语" };

        TableRow _tr; TableCell _td;

        for (int i = 0; i < _sarr_km.Length; i++) {
            _tr = new TableRow();
            for (int j = 0; j < _sarr1.Length; j++) {
                _td = new TableCell();
                _td.Text = _sarr_kmname[i] + _sarr2[j];
                _tr.Cells.Add(_td);

                _td = new TableCell();
                _td.ID = _sarr1[j] + _sarr_km[i];
                _tr.Cells.Add(_td);
            }
            tbl_summary.Rows.Add(_tr);
        }

        

        string str_conn = str_cnn + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_conn);
        cnn.Open();

        str_sql = "SELECT * FROM tb_chenji";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();

        Label lab_name;
        Single _f;

        while (datar.Read()) {
            //lab_name = new Label(); lab_name.Text = datar["cj_name"].ToString();
            foreach (string _skm in _sarr_km) {
                _f = Convert.ToSingle(datar[_skm].ToString());
                if (_f < 60) {
                    lab_name = new Label(); lab_name.Text = datar["cj_name"].ToString();
                    _td = (TableCell)FindControl("Fail" + _skm);
                    _td.Controls.Add(lab_name);

                }
                if (_f > 85)
                {
                    lab_name = new Label(); lab_name.Text = datar["cj_name"].ToString();
                    _td = (TableCell)FindControl("Good" + _skm);
                    _td.Controls.Add(lab_name);

                }
                
            }

        
        }

        cnn.Close();
    }
}