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

        int i_num = 0;
        try { i_num = Int16.Parse(txt_num.Text); }
        catch { }

        TextBox txt_tmp;
        if (i_num > 0) {
            for (int i = 0; i < i_num; i++)
            {
                txt_tmp = new TextBox();
                txt_tmp.Text = i.ToString();
                //txt_tmp.ID = "txt_" + i.ToString();
                txt_tmp.EnableViewState = true;
                pnl_addCtls.Controls.Add(txt_tmp);

            }
        }




    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    protected void txt_sum_Click(object sender, EventArgs e)
    {
        TextBox _txt;
        double d_sum=0;
        foreach (Control _ctl in pnl_addCtls.Controls) {
            if (_ctl is TextBox) {
                _txt = (TextBox)_ctl;
                try {d_sum+=double.Parse(_txt.Text);}catch{}            
            }
        }
        txt_sum.Text = d_sum.ToString();
    }
}