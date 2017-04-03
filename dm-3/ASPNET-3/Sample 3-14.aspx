<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-14.aspx.cs" Inherits="Sample_3_7" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css" >
        a.a2 { color:Gray; 
               border:1px solid silver; border-bottom:1px solid #DDD; border-right:1px solid #DDD;
               padding:10px; 
               text-decoration:none;
               background-image:url(imgs/back_navbar.png);   }
        a.a2:hover
            { color:blue;
              border:1px solid #DDD; border-bottom:1px solid silver ; border-right:1px solid silver; }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>HyperLink 控件应用</h2>
        <div id="div_p1">
            
        
            
        
            <asp:Button ID="Button1" runat="server" Text="由程序代码生成2个链接，放Panel内" onclick="Button1_Click" Width="450" />
            <asp:Button ID="Button2" runat="server" Text="程序生成1个带CssClass属性的链接，放到Panel内" onclick="Button2_Click" Width="450"  />
            <asp:Panel ID="Panel1" runat="server" CssClass="pnl">
            </asp:Panel>
            
        
        </div>




        <br />
        <a href="Sample 3-12 13.aspx" >对比在ListBox中添加控件ListItem的情况</a>

    

    
    </div>
    </form>
</body>
</html>
