<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7-4_newsclass.aspx.cs" Inherits="_7_4_newsclass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:BulletedList ID="BulletedList1" runat="server" 
            DataSourceID="AccessDataSource1" DataTextField="lnc_name" 
            DataValueField="lnc_id" DisplayMode="LinkButton" onclick="BulletedList1_Click">
        </asp:BulletedList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mdb/mydb.mdb" 
            SelectCommand="SELECT [lnc_id], [lnc_name] FROM [list_newsclass]" OnSelecting="AccessDataSource1_Selecting1">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
