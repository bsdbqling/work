<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="cj_id" DataSourceID="AccessDataSource1" OnRowDataBound ="rowDTbound">
            <Columns>
                <asp:BoundField DataField="cj_id" HeaderText="cj_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="cj_id" />
                <asp:BoundField DataField="cj_name" HeaderText="cj_name" 
                    SortExpression="cj_name" />
                <asp:BoundField DataField="cj_shuxue" HeaderText="cj_shuxue" 
                    SortExpression="cj_shuxue" />
                <asp:BoundField DataField="cj_yuwen" HeaderText="cj_yuwen" 
                    SortExpression="cj_yuwen" />
                <asp:BoundField DataField="cj_huaxue" HeaderText="cj_huaxue" 
                    SortExpression="cj_huaxue" />
                <asp:BoundField DataField="cj_wuli" HeaderText="cj_wuli" 
                    SortExpression="cj_wuli" />
                <asp:BoundField DataField="cj_yingyu" HeaderText="cj_yingyu" 
                    SortExpression="cj_yingyu" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mdb/mydb.mdb" SelectCommand="SELECT * FROM [tb_chenji]">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
