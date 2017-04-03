<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list表格制作.aspx.cs" Inherits="list表格制作" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>list表格制作</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>LIST表格制作</h1>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" ItemPlaceholderID="listview">
            <LayoutTemplate>
                <p runat="server" id="listview"></p>
            </LayoutTemplate>

            <ItemTemplate>
                <div class ="divItem">
                   <img src ='imgs/<%#Eval("news_picsrc") %>' alt="" class="fl" />
                   <div class ="fl" style="width:400px;">
                        <h2><%#Eval("news_ttl") %></h2>
                        <p class ="pDt"> <%#Eval("news_date","[{0:D}]") %>  </p>
                        <p class ="pA"> <a href='<%#Eval("news_id","news_detail.aspx?nid={0}") %>'>读取详情</a></p>
                   </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydbConnectionString8 %>" ProviderName="<%$ ConnectionStrings:mydbConnectionString8.ProviderName %>" SelectCommand="SELECT * FROM [tb_news]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
