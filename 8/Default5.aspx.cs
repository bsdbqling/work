using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default5 : System.Web.UI.Page
{
    string br = "<br/>";
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void dtbound(object sender, GridViewRowEventArgs e) {
        if (e.Row.RowType == DataControlRowType.DataRow) {
            int count_fail = 0;

            for (int i = 2; i <= 6; i++) {
                TableCell mycell = e.Row.Cells[i];
                if (Convert.ToSingle(mycell.Text) < 60) { mycell.ForeColor = System.Drawing.Color.Red; count_fail++; }
            }

            if (count_fail >= 2) { e.Row.Visible = false; }
        }
    
    }

}