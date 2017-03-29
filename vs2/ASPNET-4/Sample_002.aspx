<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample_002.aspx.cs" Inherits="Sample_01" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h4>一个简单的信息录入界面</h4>

    <p> <span class="spMemo">输入姓名：</span>
        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>    </p>

    <p> <span class="spMemo">选择性别：</span>
        <asp:RadioButton ID="rb_m" runat="server" Text ="男" GroupName="sex"/>
        <asp:RadioButton ID="rb_f" runat="server" Text="女"  GroupName="sex"/>  </p>
    <p> <span class ="spMemo">选择班级：</span>
        <asp:DropDownList ID="ddl_class" runat="server" >
            <asp:ListItem>一班</asp:ListItem>
            <asp:ListItem>二班</asp:ListItem>
            <asp:ListItem>三班</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="text-align:center">
        <asp:Button ID="btn_1" runat="server" Text="确定" onclick="btn_1_Click" /></p>

    <p> <span class="spMemo">显示结果：</span>    
        <asp:TextBox ID="txt_result" runat="server" Width="300"></asp:TextBox> </p>
    
    </div>
    </form>
</body>
</html>
