using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{    
    string str_cnn1 = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "mdb\\mydb.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;

    protected void Page_Load(object sender, EventArgs e)
    {
        //构建表格
        readDataByCode();
    }


    protected void rowDtBound(object sender, GridViewRowEventArgs e) {
        if (e.Row.RowType == DataControlRowType.DataRow) {
            for (int i = 2; i <= 6; i++) {
                Single f = Convert.ToSingle(e.Row.Cells[i].Text);
                if (f < 60) {
                    e.Row.Cells[i].CssClass = "c_r";
                }
            }
        }


        
    }



    protected void readDataByCode() {
        //从数据库读取内容并填入

        string str_cnn = str_cnn1 + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_cnn);
        cnn.Open();

        str_sql = "SELECT *,(cj_yuwen+cj_shuxue+cj_huaxue+cj_wuli+cj_yingyu)/5 as favg,(cj_yuwen+cj_shuxue+cj_huaxue+cj_wuli+cj_yingyu) as fsum FROM tb_chenji";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();

        Panel pnl_name;
        Panel pnl_fitems;
        Single sx, yw, hx, wl, yy;
        Label lab_fitem,lab_fsum,lab_name;

        while (datar.Read()) {
            lab_name = new Label(); lab_name.CssClass = "spanName";
            lab_name.Text = datar["cj_name"].ToString();
            sx =(Single) datar["cj_shuxue"];
            yw = (Single)datar["cj_yuwen"];
            hx = (Single)datar["cj_huaxue"];
            wl = (Single)datar["cj_wuli"];
            yy = (Single)datar["cj_yingyu"];
            lab_fsum = new Label(); lab_fsum.Text = (sx + yw + hx + wl + yy).ToString();
            pnl_name = new Panel(); pnl_name.CssClass = "student";
            pnl_name.Controls.Add(lab_name); pnl_name.Controls.Add(lab_fsum);

            pnl_fitems = new Panel(); pnl_fitems.CssClass = "divItems";
            lab_fitem = new Label(); lab_fitem.Text = "语文:" + yw.ToString(); pnl_fitems.Controls.Add(lab_fitem);
            lab_fitem = new Label(); lab_fitem.Text = "数学:" + sx.ToString(); pnl_fitems.Controls.Add(lab_fitem);
            lab_fitem = new Label(); lab_fitem.Text = "英语:" + yy.ToString(); pnl_fitems.Controls.Add(lab_fitem);
            lab_fitem = new Label(); lab_fitem.Text = "物理:" + wl.ToString(); pnl_fitems.Controls.Add(lab_fitem);
            lab_fitem = new Label(); lab_fitem.Text = "化学:" + hx.ToString(); pnl_fitems.Controls.Add(lab_fitem);

            
            div_code.Controls.Add(pnl_name);
            div_code.Controls.Add(pnl_fitems);


        
        }



        cnn.Close();
    
    }



   


    protected void maketable()
    {
        Table tbl_fenshu = new Table();
        TableHeaderRow _th = new TableHeaderRow();
        TableHeaderCell _thcell;
        TableRow _tr;
        TableCell _td;


        tbl_fenshu.CssClass = "tblFenshu";
        div_code.Controls.Add(tbl_fenshu);
        //表格可以先插入DIV，也可以完全构建好之后插入DIV


        //构建表头
        string[] s_th = "学生编号,姓名,语文,数学,化学,物理,英语,平均分,总分".Split(',');
        foreach (string _s in s_th) {
            _thcell = new TableHeaderCell();
            _thcell.Text = _s;
            _th.Cells.Add(_thcell);
        }
        
        tbl_fenshu.Controls.Add(_th);
       


        //从数据库读取内容并填入

        string str_cnn = str_cnn1 + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_cnn);
        cnn.Open();

        str_sql = "SELECT *,(cj_yuwen+cj_shuxue+cj_huaxue+cj_wuli+cj_yingyu)/5 as favg,(cj_yuwen+cj_shuxue+cj_huaxue+cj_wuli+cj_yingyu) as fsum FROM tb_chenji";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();

        while (datar.Read()) {
            _tr = new TableRow();
            _td = new TableCell(); _td.Text = datar["cj_id"].ToString(); _tr.Controls.Add(_td);
            _td = new TableCell(); _td.Text = datar["cj_name"].ToString(); _tr.Controls.Add(_td);
            _td = new TableCell(); _td.Text = datar["cj_yuwen"].ToString(); _td.CssClass = setcss(_td.Text); _tr.Controls.Add(_td);
            _td = new TableCell(); _td.Text = datar["cj_shuxue"].ToString(); _td.CssClass = setcss(_td.Text); _tr.Controls.Add(_td);
            _td = new TableCell(); _td.Text = datar["cj_huaxue"].ToString(); _td.CssClass = setcss(_td.Text); _tr.Controls.Add(_td);
            _td = new TableCell(); _td.Text = datar["cj_wuli"].ToString(); _td.CssClass = setcss(_td.Text); _tr.Controls.Add(_td);
            _td = new TableCell(); _td.Text = datar["cj_yingyu"].ToString(); _td.CssClass = setcss(_td.Text); _tr.Controls.Add(_td);
            _td = new TableCell(); _td.Text = string.Format("{0:n2}",datar["favg"]); _tr.Controls.Add(_td);
            _td = new TableCell(); _td.Text = string.Format("{0:n2}", datar["fsum"]); _tr.Controls.Add(_td);

            tbl_fenshu.Controls.Add(_tr);
        }
        cnn.Close();

    }


    protected string setcss(string _f){
        string _cssResult = "";
        Single _ff = Convert.ToSingle(_f);
        if (_ff < 60) { _cssResult = "c_r"; }
        if (_ff > 90) { _cssResult = "c_b"; }

        return _cssResult;
    }
}