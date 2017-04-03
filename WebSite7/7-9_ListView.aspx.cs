using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _7_9_ListView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bl_menu_Click(object sender, BulletedListEventArgs e)
    {
        Session["CID"] = bl_menu.Items[e.Index].Value;
    }
}