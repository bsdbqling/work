<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-12 13.aspx.cs" Inherits="Sample_3_7" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
       .red { color:Red;}
       .green {color:Green;}
       .fl{ float:left;
            height: 21px;
        }
       #list1,#list2,#btns
        { float:left; width:220px;}
       #btns
        { width:60px; padding-top:60px;}
       .listP2
        { width:200px; height:180px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>ListBox 简单应用</h2>
        <div id="div_p1">
            <p>多选ListBox,获取选中的值：</p>
            选择你喜爱的食物：<br />
            <asp:ListBox ID="lb_food" runat="server"  Height="200px" CssClass="fl"
                Width="190px" SelectionMode="Multiple" >
                <asp:ListItem>薯条</asp:ListItem>
                <asp:ListItem>可乐</asp:ListItem>
                <asp:ListItem>牛奶</asp:ListItem>
                <asp:ListItem>咖啡</asp:ListItem>
                <asp:ListItem>冰激凌</asp:ListItem>
                <asp:ListItem>火腿肠</asp:ListItem>
                <asp:ListItem>奶茶</asp:ListItem>
                <asp:ListItem>方便面</asp:ListItem>
                <asp:ListItem>香蕉</asp:ListItem>
                <asp:ListItem>苹果</asp:ListItem>
                <asp:ListItem>鸡蛋</asp:ListItem>
                <asp:ListItem>面条</asp:ListItem>
            </asp:ListBox>
        
            <asp:Button ID="btn" runat="server" onclick="Button1_Click" Text="选择" CssClass ="fl" /> 
        
            <asp:TextBox ID="txt_like" runat="server" Height="200px" Width="178px" 
                CssClass="fl" TextMode="MultiLine"></asp:TextBox>
            <div style="clear :both"></div>
        </div>
        <hr />

        <div id="div_p2">
        <p>简陋的点菜程序：</p>
            <div id="list1">
                可选的菜肴：<br />
                <asp:ListBox ID="lb_cai" CssClass="listP2" runat="server" DataSourceID="AccessDataSource1" 
                    DataTextField="CAI_NAME" DataValueField="ID" SelectionMode="Multiple" ></asp:ListBox>
            
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/DATA/51ZXW.mdb" SelectCommand="SELECT * FROM [TB_CAI]">
                </asp:AccessDataSource>
            
            </div>
            <div id="btns">
                <asp:Button ID="Button1" runat="server" Text=">>>" onclick="Button1_Click1" /> <br /><br />
                 <asp:Button ID="Button2" runat="server" Text="<<<" onclick="Button2_Click" />
            
            </div>
            
            <div id="list2">
                点菜：<br />
                <asp:ListBox ID="lb_cai2" CssClass="listP2" runat="server" 
                    SelectionMode="Multiple"></asp:ListBox>
            
            </div>
        
        </div>
    
    </div>
    </form>
</body>
</html>
