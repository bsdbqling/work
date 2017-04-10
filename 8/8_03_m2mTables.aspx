<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8_03_m2mTables.aspx.cs" Inherits="_8_02_m2mTables" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS_8.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>从多对多表中读取数据并显示</h2>
    <p class="memo">
        在这个简单的例子中，名单的显示可以使用ListView的嵌套。但是在更复杂的需要计算和加工处理之后再显示的内容中，不用代码会很难实现。
    </p>
        <asp:PlaceHolder ID="dataitems" runat="server"></asp:PlaceHolder>
    </div>
    </form>
</body>
</html>
