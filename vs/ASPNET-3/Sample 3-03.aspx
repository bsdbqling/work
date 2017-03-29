<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-03.aspx.cs" Inherits="Sample_3_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>输入正确的姓名和密码(123456)，解锁控件</h3>

        <div class="d1">
            姓名：<asp:TextBox ID="txt_name" runat="server"></asp:TextBox> <br />
            密码：<asp:TextBox ID="txt_pwd" runat="server" ontextchanged="txt_pwd_TextChanged" AutoPostBack="true" TextMode="Password" ></asp:TextBox>
           
        </div>
        
        <br />         <br />          <br />


        <asp:Panel runat="server" ID="pnl_result" Enabled="false" >
        
        <h3>拆分单行文本框的字符串，在多行文本框中显示</h3>

        <asp:TextBox ID="txt_org" runat="server" Height="26px" Width="210px"></asp:TextBox>
        <asp:Button ID="btn_split" runat="server" Text="拆分字符串"
            onclick="btn_split_Click" /> <br />
        <asp:TextBox ID="txt_result" runat="server" TextMode="MultiLine" rows="10" 
             Width="210px" ></asp:TextBox>

        </asp:Panel>


    </div>
    </form>
</body>
</html>
