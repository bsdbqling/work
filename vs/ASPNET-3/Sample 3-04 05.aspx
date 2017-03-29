<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-04 05.aspx.cs" Inherits="Sample_3_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="mydiv" runat="server" >
        <h2>单选按钮应用例程</h2>
       
        <p>三个毫无关联的RadioButton: </p>
        <asp:RadioButton ID="rb_1" runat="server" Text="单枪匹马1"  />
        <asp:RadioButton ID="rb_2" runat="server" Text="单枪匹马2" />
        <asp:RadioButton ID="rb_3" runat="server" Text="单枪匹马3" />

        <hr />

        <p>拥有相同GroupName属性的Button </p>
        <asp:RadioButton ID="rb_a1" runat="server" Text="猫" GroupName="animal" />
        <asp:RadioButton ID="rb_a2" runat="server" Text="狗" GroupName="animal" 
          />
        <asp:RadioButton ID="rb_a3" runat="server" Text="猪" GroupName="animal"  />
        <asp:RadioButton ID="rb_a4" runat="server" Text="羊" GroupName="animal"  /> 
       <br /> <br />
        
        通过按钮测试选中的动物：<br /><br />
        <asp:Button ID="Button1" runat="server" Text="选中什么动物？" 
            onclick="Button1_Click" /><asp:TextBox ID="txt_animal" runat="server"></asp:TextBox>    
       <hr />



       通过后台程序来操控被选中的按钮： <br /><br />

       请输入一个0-120之间的数：
       <asp:TextBox ID="txt_nums" runat="server"></asp:TextBox>
       <asp:Button ID="btn_checknum" runat="server" Text="确定" 
            onclick="btn_checknum_Click" /> <br />
        <asp:Label ID="lab_info" runat="server" ForeColor="Red" ></asp:Label> <br /><br />
        <asp:RadioButton ID="rb_num1" runat="server" GroupName="numcheck" Text="不及格" />
        <asp:RadioButton ID="rb_num2" runat="server"  GroupName="numcheck" Text="合格"  />
        <asp:RadioButton ID="rb_num3" runat="server"  GroupName="numcheck" Text="良好"  />
        <asp:RadioButton ID="rb_num4" runat="server"  GroupName="numcheck" Text="优秀"  />


       
       
    </div>
        

       

    </form>
</body>
</html>
