<%@ Page Title="" Language="C#" MasterPageFile="~/A_7_1_DataControlShow.master" AutoEventWireup="true" CodeFile="2_datalistshow.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div>
    <h2 class ="h2ttl">2. DataList显示数据</h2>
    <p class="pMemo">DataList中显示的模版可<span style ="color:red;">以任意定义</span>，并非只能以这样块状的显示。</p>
    
    
    <div >

    <%--    第一种DataList显示方式--%>
    <div id="dlist1" class="fl" style ="width:300px;">
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
            DataKeyField="news_id" DataSourceID="AccessDataSource1" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>
                news_id:
                <asp:Label ID="news_idLabel" runat="server" Text='<%# Eval("news_id") %>' />
                <br />
                news_ttl:
                <asp:Label ID="news_ttlLabel" runat="server" Text='<%# Eval("news_ttl") %>' />
                <br />
                news_date:
                <asp:Label ID="news_dateLabel" runat="server" Text='<%# Eval("news_date") %>' />
                <br />
                news_content:
                <asp:Label ID="news_contentLabel" runat="server" 
                    Text='<%# Eval("news_content") %>' />
                <br />
                news_order:
                <asp:Label ID="news_orderLabel" runat="server" 
                    Text='<%# Eval("news_order") %>' />
                <br />
                news_enable:
                <asp:Label ID="news_enableLabel" runat="server" 
                    Text='<%# Eval("news_enable") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        </asp:DataList>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mdb/mydb.mdb" SelectCommand="SELECT * FROM [t_news_mng]">
        </asp:AccessDataSource>
    
    </div>





<%--    第二种DataList显示方式--%>
    <div class ="fr" style ="width:300px;">
        <asp:DataList ID="DataList2" runat="server" DataKeyField="news_id" 
            DataSourceID="AccessDataSource1">
            <ItemTemplate>
                新闻编号:                
                <asp:Label ID="news_idLabel" runat="server" Text='<%# Eval("news_id") %>' />
                <br />
                <asp:Label ID="news_ttlLabel" runat="server" Text='<%# Eval("news_ttl") %>' />  <br />
                <asp:Label ID="news_dateLabel" runat="server" Text='<%# Eval("news_date") %>' />
                <br />
                排序:
                <asp:Label ID="news_orderLabel" runat="server" 
                    Text='<%# Eval("news_order") %>' />
                <br />
                有效性：
                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%#Eval("news_enable") %>' Enabled="false" />
                <br />
                
                <hr />
            </ItemTemplate>
        </asp:DataList>

    </div>

    <div class="clr"></div>
    </div>
    </div>
</asp:Content>

