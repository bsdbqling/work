<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-01.aspx.cs" Inherits="Sample_3_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>标准服务器控件 & HTML控件</h3>
        <div class ="d1">这是一个HTML input控件：  
            <input id="txt_html" type="text" /></div>

        <div class ="d1">这是一个ASP标准服务器控件：  
            <asp:TextBox ID="txt_asp" runat="server"></asp:TextBox></div>

        <div class ="d1">这是一个有RUNAT属性的HTML控件：  
            <input id="txt_htmlServer" type="text" runat ="server"  /></div>
        
        

        <div class="tc">
            <asp:Button ID="Button1" runat="server" Text="更改第一个文本框的值(后台程序无法做到)" 
                onclick="Button1_Click" /> <br />
            <asp:Button ID="Button2" runat="server" Text="更改第二个文本框的值" 
                onclick="Button2_Click" /> <br />
            <asp:Button ID="Button3" runat="server" Text="更改第三个文本框的值" 
                onclick="Button3_Click" />
        </div>
        

    </div>
    </form>
</body>
</html>
