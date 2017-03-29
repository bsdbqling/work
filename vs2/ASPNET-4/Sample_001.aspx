<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample_001.aspx.cs" Inherits="Sample_01" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h4>在PageLoad事件中，对控件状态进行设置：</h4>

        <p>
            <span class ="spMemo">label控件，当前时间：</span>
            <asp:Label ID="lab_timeNow" runat="server" ></asp:Label>
        </p>
    
        <p>
            <span class ="spMemo">控制checkBox控件为选中状态：</span>
            <asp:CheckBox ID="chk_01" runat="server" Text ="自动选中" />
            <asp:CheckBox ID="chk_02" runat="server" Text = "非自动选中" />
        </p>

        <p>
            <span class ="spMemo">设置DropDwonList控件，第二项为默认选中状态</span>
            <asp:DropDownList ID="ddl_soft" runat="server" >
                <asp:ListItem>VisualStudio 2010</asp:ListItem>
                <asp:ListItem>OFFICE 2010</asp:ListItem>
                <asp:ListItem>PhotoShop CS4</asp:ListItem>
                <asp:ListItem>SQL SERVER 2000</asp:ListItem>
            </asp:DropDownList>
        </p>


        <p>
            <span class ="spMemo">设置文本框：第一个为PASSWORD,第二个为不可用,第三个内容为空</span> <br /><br />
            <asp:TextBox ID="txt_pwd" runat="server" Text ="第一个文本框"></asp:TextBox>
            <asp:TextBox ID="txt_disable" runat="server"  Text ="第二个文本框"></asp:TextBox>
            <asp:TextBox ID="txt_null" runat="server"  Text ="第三个文本框"></asp:TextBox>
        </p>

        <p><span  class ="spMemo">一个以前课程中的程序：获取文本框内容并拆分：</span><br /><br />
            <asp:Button ID="Button1" runat="server" Text="获取内容并拆分" 
                onclick="Button1_Click" />
            <asp:TextBox ID="txt_result" runat="server" Width="300"></asp:TextBox>
        
        </p>



    <hr />
    <div class="divTc">
        <asp:Button ID="btn_refresh" runat="server" Text="刷新页面" />
    </div>
    </div>
    </form>
</body>
</html>
