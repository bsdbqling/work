using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exercise_0401 : System.Web.UI.Page
{
    //定义两个变量，控件，以便调用
    ListItem li;
    CheckBox chk;

    protected void Page_Load(object sender, EventArgs e)
    {
        //将转存TEXT中的内容赋值给一个数组
        string[] arrS_food = txt_tmp.Text.Split(','); 

        //遍历数组，按值创建checkbox并添加到层中
        for (int i = 0; i < arrS_food.Length; i++)
        {   
            chk = new CheckBox();
            chk.CssClass = "blk"; //CSS中定义，display:block;
            chk.Text = arrS_food[i];

            //因为split拆分空字符串会产生1个成员，所以要规避空字符串的添加
            if (chk.Text != "") { div_food.Controls.Add(chk); }
        }
        
        
    }
    protected void btn_toAnimal_Click(object sender, EventArgs e)
    {

        if (txt_input.Text != "") {
            li = new ListItem();
            li.Text = txt_input.Text;
            ddl_animal.Items.Add(li);
            //添加完成后，清空input
            txt_input.Text = "";
        }
    }
    protected void btn_toFood_Click(object sender, EventArgs e)
    {

        if (txt_input.Text != "") {
            chk = new CheckBox();
            chk.Text = txt_input.Text;
            div_food.Controls.Add(chk);

            //添加控件之后，同时要写入转存用的TEXTBOX，以便下一次PostBack时由PageLoad调用，并创建控件
            txt_tmp.Text += txt_input.Text + ",";
            txt_input.Text = "";
            
        }
    }


    //输出：遍历div_food层下所有控件，如果是checkBox控件，且被选中，则输出内容，否则忽略
    protected void Button1_Click(object sender, EventArgs e)
    {
        string _animal = ddl_animal.Text;
        string _food = "";
        foreach (Control _ctl in div_food.Controls) {
            if (_ctl is CheckBox) {
                chk = (CheckBox)_ctl;
                _food +=((chk.Checked)?chk.Text +",":""); }
        }
        txt_result.Text = _animal + "喜欢的食物有：" + _food;
    }
        

}