using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _7_4_newsclass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
    {
        string _cid = BulletedList1.Items[e.Index].Value;
        Session["CID"] = _cid;
        Response.Redirect("7-4_newslist.aspx");


    }

}