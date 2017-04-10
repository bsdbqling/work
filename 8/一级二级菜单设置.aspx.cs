using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Sample02_2LevelNav : System.Web.UI.Page
{   string str_cnn = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
    string str_sourcefile = "mdb\\mydb.mdb";
    OleDbConnection cnn;
    OleDbCommand cmd;
    OleDbDataReader datar;
    string str_sql;


    protected void Page_Load(object sender, EventArgs e)
    {

        //载入二级导航菜单
        makenav();

    }



    protected void makenav() { 
        
        string str_conn = str_cnn + MapPath(str_sourcefile);
        cnn = new OleDbConnection(str_conn);
        cnn.Open();

        str_sql = "SELECT t_menuL0.*, t_menuL1.* FROM t_menuL1 RIGHT JOIN t_menuL0 ON t_menuL1.m1_m0id = t_menuL0.m0_id";
        cmd = new OleDbCommand(str_sql, cnn);
        datar = cmd.ExecuteReader();

        Panel pnl_menuset, pnl_submenu;
        HyperLink a_m0, a_m1;

        while (datar.Read()) {

            pnl_menuset = (Panel)div_menu.FindControl("div_menuset_" + datar["m0_id"].ToString());
            if (pnl_menuset == null) {
                pnl_menuset = new Panel(); pnl_menuset.CssClass = "menuset";
                pnl_menuset.ID = "div_menuset_" + datar["m0_id"].ToString();
                div_menu.Controls.Add(pnl_menuset);
            } 
            pnl_menuset = (Panel)div_menu.FindControl("div_menuset_" + datar["m0_id"].ToString());




            a_m0 = (HyperLink)div_menu.FindControl("a_m0_" + datar["m0_id"].ToString());
            if (a_m0 == null) {
                a_m0 = new HyperLink(); a_m0.CssClass = "m0";
                a_m0.ID = "a_m0_" + datar["m0_id"].ToString();
                a_m0.Text = datar["m0_ttl"].ToString();
                a_m0.NavigateUrl = datar["m0_url"].ToString();
                pnl_menuset.Controls.Add(a_m0);
            }

            if (!(datar["m1_ttl"] is DBNull)) {
                pnl_submenu = (Panel)div_menu.FindControl("div_smenu_" + datar["m0_id"].ToString());
                if (pnl_submenu == null) {
                    pnl_submenu = new Panel(); pnl_submenu.CssClass = "smenu";
                    pnl_submenu.ID = "div_smenu_" + datar["m0_id"].ToString();
                    pnl_menuset.Controls.Add(pnl_submenu);
                }
                pnl_submenu = (Panel)div_menu.FindControl("div_smenu_" + datar["m0_id"].ToString());

                a_m1 = new HyperLink(); a_m1.CssClass = "m1";
                a_m1.ID = "a_m1_" + datar["m1_id"].ToString();
                a_m1.Text = datar["m1_ttl"].ToString();
                a_m1.NavigateUrl = datar["m1_url"].ToString();
                pnl_submenu.Controls.Add(a_m1);
                            
            }
        
        }

        cnn.Close();

        Panel p = new Panel();
        p.Style.Add("clear", "both");
        div_menu.Controls.Add(p);

    }




}