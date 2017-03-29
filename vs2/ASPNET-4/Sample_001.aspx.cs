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
        if (!IsPostBack)
        {
            //设置label为当前时间
            lab_timeNow.Text = DateTime.Now.ToString();

            //设置第一个CHECKBOX为选中状态
            chk_01.Checked = true;

            //设置DDL第二项为默认选中
            ddl_soft.Items[1].Selected = true;


            //设置三个文本框的状态
            txt_pwd.TextMode = TextBoxMode.Password;
            txt_disable.Enabled = false;
            txt_null.Text = "";
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //建立一个数组，获取文本框txt_null的内容
        char[] arr_chr = txt_null.Text.ToCharArray();


        //遍历数组中的每一个字符
        txt_result.Text = "";
        foreach (char _chr in arr_chr) {
            txt_result.Text += _chr.ToString() + "|";
        }

    }
}