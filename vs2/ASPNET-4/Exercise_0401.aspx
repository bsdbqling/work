<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exercise_0401.aspx.cs" Inherits="Exercise_0401" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>练习：动态添加选项，并选择输出</h3>
        <p>
            <span class ="spMemo">输入文本内容：</span>
            <asp:TextBox ID="txt_input" runat="server"></asp:TextBox>
            <asp:Button ID="btn_toAnimal" runat="server" Text="添加至动物" 
                onclick="btn_toAnimal_Click" />
            <asp:Button ID="btn_toFood" runat="server" Text="添加至食物" 
                onclick="btn_toFood_Click"  />
        
        </p>


        <div id="div_animal">   
            动物：
            <asp:DropDownList ID="ddl_animal" runat="server" Width="150">
                <asp:ListItem>猫</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div id="div_food" runat="server" >
            食物：
            </div>

       
        <div class ="divTc" style="clear:both">
         <hr />
            <asp:Button ID="Button1" runat="server" Text="输出选择" onclick="Button1_Click" /> <br /><br />
            <asp:TextBox ID="txt_result" runat="server" Width="400"></asp:TextBox>
        
        </div>
        <%--这个隐藏的文本框，用来存储CHECKBOX列表--%>
        <asp:TextBox ID="txt_tmp" runat="server" Visible="false"  ></asp:TextBox>
    </div>
    </form>
</body>
</html>
