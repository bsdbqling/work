<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-07.aspx.cs" Inherits="Sample_3_7" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .AAA li
            { display:inline-block; width:120px;}
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="mydiv">
        <h2>BulletedList 控件</h2>
        <div id="div_p1">
            <p>1. 最普通的信息显示:</p>
        
            <asp:BulletedList ID="bl_1" runat="server" >
                <asp:ListItem Value="A">显示的第一条信息</asp:ListItem>
                <asp:ListItem Value="B">这里显示第二条信息</asp:ListItem>
                <asp:ListItem Value="C">我是第三条信息</asp:ListItem>
            </asp:BulletedList>
        </div>

        <hr />
        <div id="div_p2">
             <p>2. 链接方式的BulletedList:</p>
            <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink">
                <asp:ListItem Value="http://www.51zxw.net">我要自学网首页</asp:ListItem>
                <asp:ListItem Value="http://www.51zxw.net/list.aspx?cid=410">ASP.NET基础课程</asp:ListItem>
                <asp:ListItem Value="http://www.51zxw.net/bbs/index.asp?boardid=16">自学网论坛ASP.NET板块</asp:ListItem>
            </asp:BulletedList>
        
        </div>
        <hr />
        <div id="div_p3">
            <p>3. 从数据库获取数据信息</p>

            <asp:BulletedList ID="BulletedList2" runat="server" 
                DataSourceID="AccessDataSource1" DataTextField="f_psName" 
                DataValueField="f_psName">
            </asp:BulletedList>

            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/DATA/51ZXW.mdb" SelectCommand="SELECT * FROM [TB_PERSON]">
            </asp:AccessDataSource>

        </div>

        <hr />
        <div id="div_p4">
            链接：<a href ="Sample 3-08.aspx">用CSS控制的BulletedList </a>  <br />
            链接：<a href ="Sample 3-09.aspx">用BulletedList + CSS制作的导航条 </a> 
        </div>
    
    </div>
    </form>
</body>
</html>
