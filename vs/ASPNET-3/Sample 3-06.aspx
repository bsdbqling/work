<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-06.aspx.cs" Inherits="Sample_3_6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="mydiv">
    <h2>CheckBox应用</h2>
    
    <%--程序1--%>
    <div>
        <asp:CheckBox ID="CheckBox1" runat="server" Text ="我是AutoPostBack" 
            AutoPostBack="true" oncheckedchanged="CheckBox1_CheckedChanged"  />   
        &nbsp;   
        <asp:TextBox ID="txt_1" runat="server"></asp:TextBox>
    </div>
    <hr />

    <%--程序2--%>
    <div id="div_chklist" runat="server" >
        <p>请选择你的爱好：</p>
        <asp:CheckBox ID="CheckBox2" runat="server" Text ="逛街" Width="100px" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text ="喝茶" Width="100px" />
        <asp:CheckBox ID="CheckBox4" runat="server" Text ="唱歌" Width="100px" />
        <asp:CheckBox ID="CheckBox5" runat="server" Text ="购物" Width="100px" />
        <asp:CheckBox ID="CheckBox6" runat="server" Text ="看电影" Width="100px" />
        <asp:CheckBox ID="CheckBox7" runat="server" Text ="看书" Width="100px" />
        <asp:CheckBox ID="CheckBox8" runat="server" Text ="旅游" Width="100px" />
        <asp:CheckBox ID="CheckBox9" runat="server" Text ="听音乐" Width="100px" />
        <asp:CheckBox ID="CheckBox10" runat="server" Text ="爬山" Width="100px" />
        <asp:CheckBox ID="CheckBox11" runat="server" Text ="玩游戏" Width="100px" />
        <asp:CheckBox ID="CheckBox12" runat="server" Text ="看综艺节目" Width="100px" />
        <asp:CheckBox ID="CheckBox13" runat="server" Text ="学ASP.NET" Width="100px" />
        <br /><br />
        <asp:Button ID="btn_submit" runat="server" Text="提交" Height="29px" 
            Width="78px" onclick="btn_submit_Click" /> 
        <br /><br />
        您选择的是：<asp:TextBox ID="TextBox1" runat="server" Height="56px" 
            Width="310px" TextMode="MultiLine"></asp:TextBox>

    </div>
    <hr />
    <div style="text-align:center; padding:10px; ">
        <asp:Button ID="Button1" runat="server" Text="foreach循环语句应用于数组代码示例" 
            onclick="Button1_Click" />
    </div>
    
    </div>
    </form>
</body>
</html>
