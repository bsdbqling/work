using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_004 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //尝试获取输入的值，并规避输入错误
        //（最标准的方法应在前台检测）
        int i_num = 0;
        try { i_num = Int16.Parse(txt_num.Text); }
        catch { }

        TextBox txt_tmp;
        if (i_num > 0)
        {
            for (int i = 0; i < i_num; i++)
            {
                txt_tmp = new TextBox();
                txt_tmp.Text = i.ToString(); //注意动态创建的文本框，最终显示的值不受这句控制
                //txt_tmp.ID = "txt_" + i.ToString();  //控件的ID可以不加，编译会自动赋予一个NAME属性
                pnl_addCtls.Controls.Add(txt_tmp);

            }
        }
        




    }
    protected void Button1_Click(object sender, EventArgs e)
    {



    }

    protected void txt_sum_Click(object sender, EventArgs e)
    {
        int i = pnl_addCtls.Controls.Count; //计算controls总数的语句
        txt_sum.Text = i.ToString();

    }
}