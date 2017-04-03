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



    protected void btn_reads_Click(object sender, EventArgs e)
    {
        //div的InnerText属性调用；请注意很多其他的HTML控件都有InnerText属性，如<p>,<span>,<td>...
        div_result.InnerText = txt_s.Text;
    }


    protected void btn_readhtml_Click(object sender, EventArgs e)
    {
        div_result.InnerText = txt_html.Value;
    }


    protected void btn_readm_Click(object sender, EventArgs e)
    {
        div_result.InnerText = txt_m.Text;
    }


    protected void btn_readp_Click(object sender, EventArgs e)
    {
        div_result.InnerText = txt_p.Text;
       
    }

}