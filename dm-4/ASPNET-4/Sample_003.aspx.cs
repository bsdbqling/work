using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_003 : System.Web.UI.Page
{
    int i = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        //每次页面载入都清空这个文本框
        txt_result.Text = "";

        txt_result.Text =i++.ToString() +  ":PageLoad" + "\n";

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        txt_result.Text +=i++.ToString()+ ":TextChanged" + "\n";

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txt_result.Text +=i++.ToString() + ":SelectChanged" + "\n";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        txt_result.Text +=i++.ToString() + ":ButtonClick" + "\n";
    }
}