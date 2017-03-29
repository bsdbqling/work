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


    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    //对ASP服务器控件的文本框写入当前日期时间
    protected void Button2_Click(object sender, EventArgs e)
    {
        //日期时间型数据转换成长日期格式的写法：
        txt_asp.Text = DateTime.Now.ToLongDateString();

    }



    //对HTML服务器控件的文本框写入当前日期时间
    protected void Button3_Click(object sender, EventArgs e)
    {
        txt_htmlServer.Value = DateTime.Now.ToString();
    }
}