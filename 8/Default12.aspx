<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default12.aspx.cs" Inherits="Default12" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type ="text/css">
        #tbl_summary{ border:1px solid black;}
        #tbl_summary td,#tbl_summary th
            { padding:10px; border:1px solid silver;}
            td span
                { margin:10px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="tbl_summary" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell ColumnSpan="4">成绩汇总</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
