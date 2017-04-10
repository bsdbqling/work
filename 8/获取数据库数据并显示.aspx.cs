using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default9 : System.Web.UI.Page
{
    string str_cnn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "mdb\\mydb.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;

    protected void Page_Load(object sender, EventArgs e)
    {
        string str_conn = str_cnn + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_conn);
        cnn.Open();

        str_sql = "SELECT * FROM tb_chenji";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();

        Panel pnl_name;
        Panel pnl_fitems;
        Label lab_fitem, lab_name;

        while (datar.Read()) {
            Single[] arrf = new Single[5];
            arrf[0] = Convert.ToSingle(datar["cj_yuwen"]);
            arrf[1] = Convert.ToSingle(datar["cj_shuxue"]);
            arrf[2] = Convert.ToSingle(datar["cj_wuli"]);
            arrf[3] = Convert.ToSingle(datar["cj_huaxue"]);
            arrf[4] = Convert.ToSingle(datar["cj_yingyu"]);
            //true表示不显示
            if (checkfen(arrf) == true) { continue; }


            lab_name = new Label(); lab_name.Text = datar["cj_name"].ToString();
            pnl_name = new Panel(); pnl_name.CssClass = "studentName";
            pnl_name.Controls.Add(lab_name);
            div_itemholder.Controls.Add(pnl_name);

            pnl_fitems = new Panel();
            lab_fitem = new Label(); lab_fitem.Text = "语文:" + datar["cj_yuwen"].ToString();
            pnl_fitems.Controls.Add(lab_fitem);
            lab_fitem = new Label(); lab_fitem.Text = "数学:" + datar["cj_shuxue"].ToString();
            pnl_fitems.Controls.Add(lab_fitem);
            lab_fitem = new Label(); lab_fitem.Text = "物理:" + datar["cj_wuli"].ToString();
            pnl_fitems.Controls.Add(lab_fitem);
            lab_fitem = new Label(); lab_fitem.Text = "化学:" + datar["cj_huaxue"].ToString();
            pnl_fitems.Controls.Add(lab_fitem);
            lab_fitem = new Label(); lab_fitem.Text = "英语:" + datar["cj_yingyu"].ToString();
            pnl_fitems.Controls.Add(lab_fitem);
            div_itemholder.Controls.Add(pnl_fitems);


        
        }


        cnn.Close();

    }


    protected Boolean checkfen(Single[] _arrf) {
        Boolean _result = false;
        int count = 0;

        foreach (Single _s in _arrf) {
            if (_s < 60) { count++; }
        }
        if (count >= 2) { _result = true; }

        return _result;
    }

}