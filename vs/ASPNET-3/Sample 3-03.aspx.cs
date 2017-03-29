using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_3_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }






    protected void txt_pwd_TextChanged(object sender, EventArgs e)
    {
        //如果有输入姓名，且密码框内容为“123456”，则解锁PANEL,否则锁定
        if (txt_name.Text != "" && txt_pwd.Text == "123456")
        {
            //逐个控件解锁
           /* txt_org.Enabled = true;
            txt_result.Enabled = true;
            btn_split.Enabled = true;*/

            //通过解锁PANEL，一次性解锁控件
            pnl_result.Enabled = true;

        }
        else {
            /*txt_org.Enabled = false;
            txt_result.Enabled = false;
            btn_split.Enabled = false;*/
            pnl_result.Enabled = false;
        }
    }


    protected void btn_split_Click(object sender, EventArgs e)
    {
        //定义字符数组ca，
        char[] ca;

        //清理文本框内容
        txt_result.Text = "";

        //如果文本框ORG中，有内容，则执行拆分动作
        if (txt_org.Text != "") {

            ca = txt_org.Text.ToCharArray();    //将文本框ORG的值 赋值给字符数组变量

            for (int i = 0; i < ca.Length; i++)  //遍历字符数组中的每一个成员，
            { txt_result.Text += ca[i]+"\n"; }  //将ca[i]的值写入多行文本框中，每写一个加一个换行符 "\n"

        }
    }

}