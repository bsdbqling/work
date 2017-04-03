using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        txt_name.Text = "";
        ddl_class.SelectedValue = "二班";
        rb_m.Checked = true;
         

    }
    protected void btn_1_Click(object sender, EventArgs e)
    {
        //声明结果字符串
        string _result = "";

        //分行构建结果字符串：注意2个三元运算外都加了（）
        _result = txt_name.Text + "," +
                  ((rb_m.Checked) ? "男" : "") + ((rb_f.Checked) ? "女" : "") + "," +
                  "班级是：" + ddl_class.Text;

        //输出结果至文本框
        txt_result.Text = _result;


    }

}