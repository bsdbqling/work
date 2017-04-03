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
        RectangleHotSpot ha=new RectangleHotSpot();
        ha.Left = 0; ha.Right = 200; ha.Top = 300; ha.Bottom = 400;
        ha.NavigateUrl = "http://www.taobao.com";
        ha.AlternateText = "淘宝";


        imgMap.HotSpots.Add(ha);
    }
}