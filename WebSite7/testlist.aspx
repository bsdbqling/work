<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testlist.aspx.cs" Inherits="testlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="lnc_name" DataValueField="lnc_id"   style="height: 40px; width: 150px;font-size: x-large;"  >
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:mydbConnectionString2.ProviderName %>" SelectCommand="SELECT [lnc_id], [lnc_name] FROM [list_newsclass]">
        </asp:SqlDataSource>
    
        <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
    
        <br />
        <br />
    
       
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="news_id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="news_id" HeaderText="news_id" InsertVisible="False" ReadOnly="True" SortExpression="news_id" />
                <asp:BoundField DataField="news_ttl" HeaderText="news_ttl" SortExpression="news_ttl" />
                <asp:BoundField DataField="news_date" HeaderText="news_date" SortExpression="news_date" />
                <asp:BoundField DataField="news_content" HeaderText="news_content" SortExpression="news_content" />
                <asp:CheckBoxField DataField="news_enable" HeaderText="news_enable" SortExpression="news_enable" />
                <asp:BoundField DataField="news_order" HeaderText="news_order" SortExpression="news_order" />
                <asp:BoundField DataField="news_cid" HeaderText="news_cid" SortExpression="news_cid" />
                <asp:BoundField DataField="news_picsrc" HeaderText="news_picsrc" SortExpression="news_picsrc" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:mydbConnectionString2.ProviderName %>" SelectCommand="SELECT [news_id], [news_ttl], [news_date], [news_content], [news_enable], [news_order], [news_cid], [news_picsrc] FROM [tb_news] WHERE ([news_cid] = ?)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="news_cid" SessionField="CID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
