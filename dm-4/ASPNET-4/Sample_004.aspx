<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample_004.aspx.cs" Inherits="Sample_004" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>动态创建控件</h3>
        <p>
            <span class ="spMemo">输入需要几个文本框：</span>
            <asp:TextBox ID="txt_num" runat="server"></asp:TextBox>
            <asp:Button ID="btn_creat" runat="server" Text="创建文本框组" onclick="Button1_Click" />
        </p>


        <asp:Panel ID="pnl_addCtls" runat="server" CssClass="aspPnl">
        </asp:Panel>

        <div class="divTc">
           <%-- 注意：数字会多一个。即literalControl 不可见的--%>
            <asp:Button ID="txt_sum" runat="server" Text="一共有几个文本框" onclick="txt_sum_Click" />
        </div>
    </div>
    </form>
</body>
</html>
