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
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        txt_like.Text = "";
        //对listBox控件做遍历，2种方式都可以 for,foreach
        //1. 最直接的写法，但代码内容嵌套过多，不易读懂
        //for (int i = 0; i < lb_food.Items.Count; i++) {
        //    if (lb_food.Items[i].Selected) { 
        //        txt_like.Text += lb_food.Items[i].Text + ","; 
        //    }        
        //}

        //2. 用一个中间变量获取Item，然后操作中间变量
        //for (int i = 0; i < lb_food.Items.Count; i++) {
        //    ListItem obj_li = lb_food.Items[i];
        //    if (obj_li.Selected) { 
        //        txt_like.Text += obj_li.Text + ","; 
        //    }
        //}

        //3. foreach方式遍历，代码更简洁 
        foreach (ListItem _li in lb_food.Items) {
            if (_li.Selected) { 
                txt_like.Text += _li.Text + ","; 
            }
        }


    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        for (int i = lb_cai.Items.Count-1; i >= 0; i--) {
            if (lb_cai.Items[i].Selected) {
                lb_cai2.Items.Add(lb_cai.Items[i]);
                lb_cai.Items.RemoveAt(i);
            }
        
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = lb_cai2.Items.Count - 1; i >= 0; i--) {
            if (lb_cai2.Items[i].Selected) { 
                lb_cai.Items.Add(lb_cai2.Items[i]);
                lb_cai2.Items.Remove(lb_cai2.Items[i]);
            }
        
        }
    }
}