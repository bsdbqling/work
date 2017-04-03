<%@ Page Title="" Language="C#" MasterPageFile="~/A_7_1_DataControlShow.master" AutoEventWireup="true" CodeFile="5_listviewshow.aspx.cs" Inherits="_5_listviewshow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<h2 class="h2ttl">5.ListView 演示</h2>
    


    <asp:ListView ID="ListView1" runat="server" DataKeyNames="news_id" 
        DataSourceID="AccessDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="news_idLabel" runat="server" Text='<%# Eval("news_id") %>' />
                </td>
                <td>
                    <asp:Label ID="news_ttlLabel" runat="server" Text='<%# Eval("news_ttl") %>' />
                </td>
                <td>
                    <asp:Label ID="news_dateLabel" runat="server" Text='<%# Eval("news_date") %>' />
                </td>
                <td>
                    <asp:Label ID="news_contentLabel" runat="server" 
                        Text='<%# Eval("news_content") %>' />
                </td>
                <td>
                    <asp:Label ID="news_orderLabel" runat="server" 
                        Text='<%# Eval("news_order") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="news_enableCheckBox" runat="server" 
                        Checked='<%# Eval("news_enable") %>' Enabled="false" />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #FFCC66;color: #000080;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
                <td>
                    <asp:Label ID="news_idLabel1" runat="server" Text='<%# Eval("news_id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="news_ttlTextBox" runat="server" 
                        Text='<%# Bind("news_ttl") %>' />
                </td>
                <td>
                    <asp:TextBox ID="news_dateTextBox" runat="server" 
                        Text='<%# Bind("news_date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="news_contentTextBox" runat="server" 
                        Text='<%# Bind("news_content") %>' />
                </td>
                <td>
                    <asp:TextBox ID="news_orderTextBox" runat="server" 
                        Text='<%# Bind("news_order") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="news_enableCheckBox" runat="server" 
                        Checked='<%# Bind("news_enable") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        未返回数据。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="news_ttlTextBox" runat="server" 
                        Text='<%# Bind("news_ttl") %>' />
                </td>
                <td>
                    <asp:TextBox ID="news_dateTextBox" runat="server" 
                        Text='<%# Bind("news_date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="news_contentTextBox" runat="server" 
                        Text='<%# Bind("news_content") %>' />
                </td>
                <td>
                    <asp:TextBox ID="news_orderTextBox" runat="server" 
                        Text='<%# Bind("news_order") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="news_enableCheckBox" runat="server" 
                        Checked='<%# Bind("news_enable") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="news_idLabel" runat="server" Text='<%# Eval("news_id") %>' />
                </td>
                <td>
                    <asp:Label ID="news_ttlLabel" runat="server" Text='<%# Eval("news_ttl") %>' />
                </td>
                <td>
                    <asp:Label ID="news_dateLabel" runat="server" Text='<%# Eval("news_date") %>' />
                </td>
                <td>
                    <asp:Label ID="news_contentLabel" runat="server" 
                        Text='<%# Eval("news_content") %>' />
                </td>
                <td>
                    <asp:Label ID="news_orderLabel" runat="server" 
                        Text='<%# Eval("news_order") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="news_enableCheckBox" runat="server" 
                        Checked='<%# Eval("news_enable") %>' Enabled="false" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    news_id</th>
                                <th runat="server">
                                    news_ttl</th>
                                <th runat="server">
                                    news_date</th>
                                <th runat="server">
                                    news_content</th>
                                <th runat="server">
                                    news_order</th>
                                <th runat="server">
                                    news_enable</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="news_idLabel" runat="server" Text='<%# Eval("news_id") %>' />
                </td>
                <td>
                    <asp:Label ID="news_ttlLabel" runat="server" Text='<%# Eval("news_ttl") %>' />
                </td>
                <td>
                    <asp:Label ID="news_dateLabel" runat="server" Text='<%# Eval("news_date") %>' />
                </td>
                <td>
                    <asp:Label ID="news_contentLabel" runat="server" 
                        Text='<%# Eval("news_content") %>' />
                </td>
                <td>
                    <asp:Label ID="news_orderLabel" runat="server" 
                        Text='<%# Eval("news_order") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="news_enableCheckBox" runat="server" 
                        Checked='<%# Eval("news_enable") %>' Enabled="false" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
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
</asp:Content>

