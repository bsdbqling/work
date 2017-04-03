<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testclass.aspx.cs" Inherits="testclass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:BulletedList ID="BulletedList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="lnc_name" 
            DataValueField="lnc_id" DisplayMode="LinkButton" onclick="BulletedList1_Click">
        </asp:BulletedList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString5 %>" ProviderName="<%$ ConnectionStrings:mydbConnectionString5.ProviderName %>" SelectCommand="SELECT [lnc_id], [lnc_name] FROM [list_newsclass]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
