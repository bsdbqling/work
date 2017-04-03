<%@ Page Title="" Language="C#" MasterPageFile="~/A_7_1_DataControlShow.master" AutoEventWireup="true" CodeFile="3_detailsviewshow.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



 <div>
        <h2 class ="h2ttl">3. DetailsVies显示数据</h2>
        <p class ="pMemo">在这个控件中，我们勾选了数据新增、编辑、排序的功能。</p>


        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="506px" 
                AllowPaging="True" AutoGenerateRows="False" BackColor="White" 
                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                DataKeyNames="news_id" DataSourceID="AccessDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <Fields>
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
                    <asp:CheckBoxField DataField="news_enable" HeaderText="有效性" 
                        SortExpression="news_enable" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            </asp:DetailsView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/mdb/mydb.mdb" 
                DeleteCommand="DELETE FROM [t_news_mng] WHERE [news_id] = ?" 
                InsertCommand="INSERT INTO [t_news_mng] ([news_ttl], [news_date], [news_content], [news_order], [news_enable]) VALUES (?, ?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [t_news_mng]" 
                UpdateCommand="UPDATE [t_news_mng] SET [news_ttl] = ?, [news_date] = ?, [news_content] = ?, [news_order] = ?, [news_enable] = ? WHERE [news_id] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="news_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
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
    </div>
</asp:Content>

