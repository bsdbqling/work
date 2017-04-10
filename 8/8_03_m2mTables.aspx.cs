using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class _8_02_m2mTables : System.Web.UI.Page
{
    string str_cnn1 = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "mdb\\mydb.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;

  //建立一个用于存放员工姓名的数组
    string[] arr_name;

    protected void Page_Load(object sender, EventArgs e)
    {
        //读取员工人名信息，并存入数组
        string str_cnn = str_cnn1 + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_cnn);
        cnn.Open();

        str_sql = "SELECT * FROM tb_employee order by pee_id desc";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();

      

        //读取第一条时，确定数组长度
            datar.Read();
            int _length =(int)datar["pee_id"];
            arr_name = new string[_length+1]; //数据库自动编号从1开始，数组下标从0开始。
            arr_name[_length] = datar["pee_name"].ToString();



        while (datar.Read()) {
            int _index = (int)datar["pee_id"];
            arr_name[_index] = datar["pee_name"].ToString();
        }

        



        //可通过此遍历查看数组赋值情况
        /*
        foreach (string _s in arr_name) {
            if (_s == null) { Response.Write("null" + "<br/>"); }
            else
            {
                Response.Write(_s + "<br/>");
            }
        }
         */
        

        //第二次读取数据库
        str_sql = " Select * from tb_duty";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();

        Label lab_dt;
        Label lab_namelist;
        Panel pnl_item;

        while (datar.Read()) {
            lab_dt = new Label();
            lab_dt.Text = string.Format("{0:D}:",datar["duty_date"]);
            lab_namelist = new Label();
            lab_namelist.Text = getnamelist(datar["duty_peelist"].ToString());

            pnl_item = new Panel();
            pnl_item.Controls.Add(lab_dt);
            pnl_item.Controls.Add(lab_namelist);
            dataitems.Controls.Add(pnl_item);
        
        }

        cnn.Close();
        
    }


    //定义getnamelist
    //从参数"3,4,5"类型，从数组中读取姓名，转换为"王五，赵六，小李"的形式
    protected string getnamelist(string _idlist) {
        string _result = "";

        string[] _arrs_idlist = _idlist.Split(',');
        foreach (string _s in _arrs_idlist) {
            int _index = Convert.ToInt16(_s);
            _result += arr_name[_index]+",";
            
        }
      return _result;
    }

}