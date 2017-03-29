using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_3_7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /* //代码添加在这里，可以在页面载入时每次都自动生成这两个链接
        HyperLink link = new HyperLink();
        link.NavigateUrl = "http://www.51zxw.net";
        link.Text = "我要自学网";
        
        Panel1.Controls.Add(link);


        link = new HyperLink();
        link.NavigateUrl = "http://www.51zxw.net/list.aspx?cid=410";
        link.Text = "ASP.NET基础课程";
        Panel1.Controls.Add(link);

        */

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HyperLink link = new HyperLink();
        link.NavigateUrl = "http://www.51zxw.net";
        link.Text = "我要自学网";

        Panel1.Controls.Add(link);


        link = new HyperLink();
        link.NavigateUrl = "http://www.51zxw.net/list.aspx?cid=410";
        link.Text = "ASP.NET基础课程";
        Panel1.Controls.Add(link);


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        HyperLink link = new HyperLink();
        link.NavigateUrl = "http://www.51zxw.net";
        link.Text = "我要自学网";
        link.ToolTip = "进入我要自学网";
        link.CssClass = "a2";

        Panel1.Controls.Add(link);
        


    }
}