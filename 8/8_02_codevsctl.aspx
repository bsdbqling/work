<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8_02_codevsctl.aspx.cs" Inherits="Default2" Debug ="true"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS_8.css" rel="stylesheet" type="text/css" />
    <script src="Jquery172.js" type="text/javascript"></script>
    <script type ="text/jscript">
        $(document).ready(function () {
            $(".divItems").hide();

            $("td.fen", "#GridView1").text(function () {
                var _fen = $(this).text();
                if (_fen < 60) { $(this).css("color", "red"); }
                if (_fen > 85) { $(this).css("color", "blue"); }
            });


            $(".student").click(function () {
                $(".divItems").hide();
                $("+.divItems", this).show(200);
            });

        });
    </script>

    <style type="text/css">
        .divItems{ padding:10px; border-bottom:1px dotted silver;}
        .divItems span { padding:14px;}
        .student { cursor:pointer; padding:3px; background-color:#C2DEF9;}
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <p class ="memo">用GridView构建的表格</p>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/mdb/mydb.mdb" SelectCommand="SELECT * FROM tb_chenji">
        </asp:AccessDataSource>
    
        <asp:GridView ID="GridView1" runat="server" DataSourceID="AccessDataSource1" 
                AutoGenerateColumns="False" DataKeyNames="cj_id">
            <Columns>
                <asp:BoundField DataField="cj_id" HeaderText="cj_id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="cj_id" />
                <asp:BoundField DataField="cj_name" HeaderText="cj_name" 
                    SortExpression="cj_name" />
                <asp:BoundField DataField="cj_shuxue" HeaderText="cj_shuxue" 
                    SortExpression="cj_shuxue" >
                
                <ItemStyle CssClass="fen" />
                
                </asp:BoundField>
                <asp:BoundField DataField="cj_yuwen" HeaderText="cj_yuwen" 
                    SortExpression="cj_yuwen" >
                <ItemStyle CssClass="fen" />
                </asp:BoundField>
                <asp:BoundField DataField="cj_huaxue" HeaderText="cj_huaxue" 
                    SortExpression="cj_huaxue" >
                <ItemStyle CssClass="fen" />
                </asp:BoundField>
                <asp:BoundField DataField="cj_wuli" HeaderText="cj_wuli" 
                    SortExpression="cj_wuli" >
                <ItemStyle CssClass="fen" />
                </asp:BoundField>
                <asp:BoundField DataField="cj_yingyu" HeaderText="cj_yingyu" 
                    SortExpression="cj_yingyu" >
                <ItemStyle CssClass="fen" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    <br /> 


    <p class ="memo">用GridView的DataRowBound事件控制格式</p>

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="cj_id" DataSourceID="AccessDataSource1" OnRowDataBound="rowDtBound">
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


<%--    用代码构建表格--%>
    <p class ="memo">用代码构建显示内容</p>
    <div id="div_code" runat="server">
    
    </div>




    </div>
    </form>
</body>
</html>
