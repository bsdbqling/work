<%@ Page Title="" Language="C#" MasterPageFile="~/A_7_1_DataControlShow.master" AutoEventWireup="true" CodeFile="1_gridviewshow.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

        <h2 class="h2ttl">1.GridView演示</h2>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="2" DataKeyNames="news_id" 
            DataSourceID="ADS_NEWS" ForeColor="Black" GridLines="None" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="news_id" HeaderText="编号" InsertVisible="False" 
                    ReadOnly="True" SortExpression="news_id" />
                <asp:BoundField DataField="news_ttl" HeaderText="标题" 
                    SortExpression="news_ttl" />
                <asp:BoundField DataField="news_date" HeaderText="日期" 
                    SortExpression="news_date" />
                <asp:BoundField DataField="news_content" HeaderText="内容" 
                    SortExpression="news_content" />
                <asp:BoundField DataField="news_order" HeaderText="排序" 
                    SortExpression="news_order" />
                <asp:CheckBoxField DataField="news_enable" HeaderText="有效新闻" 
                    SortExpression="news_enable" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ButtonType="Button" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    
        <asp:AccessDataSource ID="ADS_NEWS" runat="server" DataFile="~/mdb/mydb.mdb" 
            DeleteCommand="DELETE FROM [t_news_mng] WHERE [news_id] = ?" 
            InsertCommand="INSERT INTO [t_news_mng] ([news_id], [news_ttl], [news_date], [news_content], [news_order], [news_enable]) VALUES (?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [t_news_mng]" 
            UpdateCommand="UPDATE [t_news_mng] SET [news_ttl] = ?, [news_date] = ?, [news_content] = ?, [news_order] = ?, [news_enable] = ? WHERE [news_id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="news_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="news_id" Type="Int32" />
                <asp:Parameter Name="news_ttl" Type="String" />
                <asp:Parameter Name="news_date" Type="DateTime" />
                <asp:Parameter Name="news_content" Type="String" />
                <asp:Parameter Name="news_order" Type="Int32" />
                <asp:Parameter Name="news_enable" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="news_ttl" Type="String" />
                <asp:Parameter Name="news_date" Type="DateTime" />
                <asp:Parameter Name="news_content" Type="String" />
                <asp:Parameter Name="news_order" Type="Int32" />
                <asp:Parameter Name="news_enable" Type="Boolean" />
                <asp:Parameter Name="news_id" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>

</asp:Content>

