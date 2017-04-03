<%@ Page Language="C#" AutoEventWireup="true" CodeFile="修改表格格式.aspx.cs" Inherits="修改表格格式" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>表格样式</title>
    <style>
        #GridView1{
        text-align: center;
        width: 100%;
        font-style: italic;
        }
        #GridView1 .fs{
            color:darkred
        }
        #GridView1 .title:hover{
            color:sandybrown
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="news_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="news_id" HeaderText="news_id" InsertVisible="False" ReadOnly="True" SortExpression="news_id" />
                <asp:BoundField DataField="news_ttl" HeaderText="news_ttl" SortExpression="news_ttl" />
                <asp:BoundField DataField="news_date" HeaderText="news_date" SortExpression="news_date" />
                <asp:BoundField DataField="news_content" DataFormatString="imgs/{0}" HeaderText="news_content" SortExpression="news_content" />
                <asp:CheckBoxField DataField="news_enable" HeaderText="news_enable" SortExpression="news_enable" />
                <asp:BoundField DataField="news_order" HeaderText="news_order" SortExpression="news_order" />
                <asp:BoundField DataField="news_cid" HeaderText="news_cid" SortExpression="news_cid" />
                <asp:BoundField DataField="news_picsrc" HeaderText="news_picsrc" SortExpression="news_picsrc" />
                <asp:ImageField DataImageUrlField="news_picsrc" DataImageUrlFormatString="imgs/{0}" HeaderText="图像">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="news_ttl,news_id" DataNavigateUrlFormatString="5_listviewshow.aspx?nid=1" DataTextField="news_content" DataTextFormatString="页面跳转" HeaderText="超链接" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString7 %>" ProviderName="<%$ ConnectionStrings:mydbConnectionString7.ProviderName %>" SelectCommand="SELECT * FROM [tb_news]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
