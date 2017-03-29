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
        
        if (rb_a1.Checked) { txt_animal.Text = "您选中了:" + rb_a1.Text; }
        if (rb_a2.Checked) { txt_animal.Text = "您选中了:" + rb_a2.Text; }
        if (rb_a3.Checked) { txt_animal.Text = "您选中了:" + rb_a3.Text; }
        if (rb_a4.Checked) { txt_animal.Text = "您选中了:" + rb_a4.Text; }




        /* 
         * 采用控件遍历的方法，寻找GroupName为animal的RadioButton，
         * 了解有这种方法，并知道有foreach这种循环
        //定义一个变量，类型为控件：RadioButton
        RadioButton myrb;
        foreach (Control ctl in mydiv.Controls ) { //遍历mydiv下的所有控件，每一次循环都将控件赋值给名为ctl的控件变量进行操作
         
         //判断是否为RadioButton类型的控件
            if (ctl is RadioButton) {  
         
         //将控件转为RadioButton类进行操作
                myrb = (RadioButton)ctl;  
         
                if (myrb.GroupName == "animal" && myrb.Checked)  //如果groupnamd为animal并且是选中状态的，那么输出
                { txt_animal.Text = "您选中的动物是:" + myrb.Text; }
        
            }
        }
         
        */
        
        

    }
    protected void btn_checknum_Click(object sender, EventArgs e)
    {
        double d_num=-1;
        //清空动作 必须有：否则页面会保留最后一次的选中结果，而使得程序设置语句无效
        rb_num1.Checked = false;
        rb_num2.Checked = false;
        rb_num3.Checked = false;
        rb_num4.Checked = false;

        //和d_num=-1，及第一个逻辑表达式协同工作，规避输入错误
        //此语句中，作为数字可以复制给d_num的，将正确赋值； 而例如文字等不能赋值给d_num的，就会跳过不执行，
        //此时仍然：d_num=-1,
        try { d_num = double.Parse(txt_nums.Text);}
        catch { }


        //到这里， d_num必然是一个数字
        if (d_num < 0 || d_num > 120)
        {
            lab_info.Text = "请输入正确的数字";
        }
        else {
            lab_info.Text = "";
            if (d_num < 60) { rb_num1.Checked = true; }
            if (d_num >= 60 && d_num < 80) { rb_num2.Checked = true; }
            if (d_num >= 80 && d_num < 100) { rb_num3.Checked = true; }
            if (d_num >= 100 && d_num <= 120) { rb_num4.Checked = true; }
        }

        


    }

}