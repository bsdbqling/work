using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_3_7_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        bl_names.CssClass = "style1";
        bl_names.DisplayMode = BulletedListDisplayMode.Text;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        bl_names.CssClass = "style2";
        bl_names.DisplayMode = BulletedListDisplayMode.Text;
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        bl_names.CssClass = "style3";
        bl_names.DisplayMode = BulletedListDisplayMode.HyperLink;


    }
}