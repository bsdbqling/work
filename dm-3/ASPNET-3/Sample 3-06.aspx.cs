using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_3_6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        //C#中的3元运算符 ：？的用法
        txt_1.Text = (CheckBox1.Checked) ? "选中状态" : "非选中状态";

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {

        //首先要清空TEXTBOX的内容；以免受上一次操作的影响
        TextBox1.Text = "";
        CheckBox chk;

        //foreach语句 ctl是循环的自变量不可被更改；所以要引入另一个变量chk（控件类型）
        foreach (Control ctl in div_chklist.Controls)
        {   if (ctl is CheckBox) { 
                chk = (CheckBox)ctl;
                if (chk.Checked) { TextBox1.Text += chk.Text + ","; }
        }
            

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        char[] cA = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();

        foreach (char _ca in cA) {
            TextBox1.Text += _ca.ToString() + Convert.ToChar(13);

        }

        
    }
}