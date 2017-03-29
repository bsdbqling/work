<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample_003.aspx.cs" Inherits="Sample_003" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>事件执行的顺序</h3>
        

        <p><span class="spMemo">拥有SelectChange事件的DropDownList</span> 
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList> </p>
        
        <p><span class="spMemo">拥有TextChange事件的TextBox</span> 
            <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox> </p>

        <p><span class="spMemo">拥有Click事件的Button</span> 
            <asp:Button ID="Button1" runat="server" Text="提交（刷新）" onclick="Button1_Click" /> </p>

        <p>输出结果文本框：
        <asp:TextBox ID="txt_result" runat="server" Height="94px" TextMode="MultiLine" 
                Width="320px"></asp:TextBox></p>
    
    </div>
    </form>
</body>
</html>
