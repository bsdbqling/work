<%@ Page Title="" Language="C#" MasterPageFile="~/A_7_1_DataControlShow.master" AutoEventWireup="true" CodeFile="4_formviewshow.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="h2ttl">4.FormView演示</h2>

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
    CellPadding="3" DataKeyNames="news_id" DataSourceID="AccessDataSource1" 
    ForeColor="Black" GridLines="Vertical" Width="405px">
        <EditItemTemplate>
            news_id:
            <asp:Label ID="news_idLabel1" runat="server" Text='<%# Eval("news_id") %>' />
            <br />
            news_ttl:
            <asp:TextBox ID="news_ttlTextBox" runat="server" 
                Text='<%# Bind("news_ttl") %>' />
            <br />
            news_date:
            <asp:TextBox ID="news_dateTextBox" runat="server" 
                Text='<%# Bind("news_date") %>' />
            <br />
            news_content:
            <asp:TextBox ID="news_contentTextBox" runat="server" 
                Text='<%# Bind("news_content") %>' />
            <br />
            news_order:
            <asp:TextBox ID="news_orderTextBox" runat="server" 
                Text='<%# Bind("news_order") %>' />
            <br />
            news_enable:
            <asp:CheckBox ID="news_enableCheckBox" runat="server" 
                Checked='<%# Bind("news_enable") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            news_ttl:
            <asp:TextBox ID="news_ttlTextBox" runat="server" 
                Text='<%# Bind("news_ttl") %>' />
            <br />
            news_date:
            <asp:TextBox ID="news_dateTextBox" runat="server" 
                Text='<%# Bind("news_date") %>' />
            <br />
            news_content:
            <asp:TextBox ID="news_contentTextBox" runat="server" 
                Text='<%# Bind("news_content") %>' />
            <br />
            news_order:
            <asp:TextBox ID="news_orderTextBox" runat="server" 
                Text='<%# Bind("news_order") %>' />
            <br />
            news_enable:
            <asp:CheckBox ID="news_enableCheckBox" runat="server" 
                Checked='<%# Bind("news_enable") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            news_id:
            <asp:Label ID="news_idLabel" runat="server" Text='<%# Eval("news_id") %>' />
            <br />
            news_ttl:
            <asp:Label ID="news_ttlLabel" runat="server" Text='<%# Bind("news_ttl") %>' />
            <br />
            news_date:
            <asp:Label ID="news_dateLabel" runat="server" Text='<%# Bind("news_date") %>' />
            <br />
            news_content:
            <asp:Label ID="news_contentLabel" runat="server" 
                Text='<%# Bind("news_content") %>' />
            <br />
            news_order:
            <asp:Label ID="news_orderLabel" runat="server" 
                Text='<%# Bind("news_order") %>' />
            <br />
            news_enable:
            <asp:CheckBox ID="news_enableCheckBox" runat="server" 
                Checked='<%# Bind("news_enable") %>' Enabled="false" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="编辑" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="删除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新建" />
        </ItemTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:FormView>


<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/mdb/mydb.mdb" 
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


</asp:Content>

