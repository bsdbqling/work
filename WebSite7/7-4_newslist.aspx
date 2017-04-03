<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7-4_newslist.aspx.cs" Inherits="_7_4_newslist" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ads_ddl" 
            DataTextField="lnc_name" DataValueField="lnc_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"   >
        </asp:DropDownList>

        <asp:Button runat="server" Text ="查询" onclick="Unnamed1_Click" 
            style="height: 21px" />

        <asp:AccessDataSource ID="ads_ddl" runat="server" DataFile="~/mdb/mydb.mdb" 
            SelectCommand="SELECT [lnc_name], [lnc_id] FROM [list_newsclass]">
        </asp:AccessDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="news_id" DataSourceID="ads_gv">
            <Columns>
                <asp:BoundField DataField="news_id" HeaderText="news_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="news_id" />
                <asp:BoundField DataField="news_ttl" HeaderText="news_ttl" 
                    SortExpression="news_ttl" />
                <asp:BoundField DataField="news_date" HeaderText="news_date" 
                    SortExpression="news_date" />
                <asp:BoundField DataField="news_order" HeaderText="news_order" 
                    SortExpression="news_order" />
                <asp:CheckBoxField DataField="news_enable" HeaderText="news_enable" 
                    SortExpression="news_enable" />
            </Columns>
        </asp:GridView>


        <asp:AccessDataSource ID="ads_gv" runat="server" DataFile="~/mdb/mydb.mdb" 
            
            SelectCommand="SELECT * FROM [tb_news] WHERE ([news_cid] = ?)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="news_cid" SessionField="CID" 
                    Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
