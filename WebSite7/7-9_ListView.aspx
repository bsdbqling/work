<%@ Page Language="C#" AutoEventWireup="true" CodeFile="7-9_ListView.aspx.cs" Inherits="_7_9_ListView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body,h1,h2,h3,p,div,img,ul{ margin:0px; padding:0px;}
        body{ width:760px; margin:0px auto;}
        a{ text-decoration:none;}
        
        .fl{float:left;}
        .fr{ float:right;}
        .clr{ clear:both;}
        
        h1{ text-align:center; padding:10px; border-bottom:1px solid silver; margin-bottom:15px;}
        
        #div_listview{ width:580px;}
        #div_menu{ width:180px;}
        
        #bl_menu{ list-style:none;}
        li{ padding:10px;}
        
        
        .divItem { margin-bottom:4px; padding-bottom:5px; border-bottom:1px dashed #eaeaea;}
        .divItem:hover { background-color:#efefef;}
        .divItem img
        { width:100px; height:100px; padding:3px; border:1px solid #eaeaea;}
        .divItem h2
        { font-family:微软雅黑; font-size:16px; color:#666; padding:4px 0px 5px 10px;}
        .divItem p
        { padding:15px;}
        .divItem .pDt
        { font-size:12px; color:Gray;}
        .divItem .pA
        { text-align:right;}
        .divItem a
        { font-size:12px; color:Gray; text-decoration:underline;}
        .divItem a:hover
        { color:Red;}
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>新闻列表内容的显示</h1>

    <div id="div_listview" class="fl">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="ads_lv" ItemPlaceholderID="holder">
            <LayoutTemplate>
                <div runat="server" id="holder">
                </div>
            </LayoutTemplate>

            <ItemTemplate>
                <div class ="divItem">
                   <img src ='imgs/<%#Eval("news_picsrc") %>' alt="" class="fl" />
                   <div class ="fl" style="width:400px;">
                        <h2><%#Eval("news_ttl") %></h2>
                        <p class ="pDt"> <%#Eval("news_date","[{0:D}]") %>  </p>
                        <p class ="pA"> <a href='<%#Eval("news_id","news_detail.aspx?nid={0}") %>'>读取详情</a></p>
                   </div>
                <div class="clr"></div>
                </div>
            </ItemTemplate>

        </asp:ListView>





        <asp:AccessDataSource ID="ads_lv" runat="server" DataFile="~/mdb/mydb.mdb" 
            SelectCommand="SELECT * FROM [tb_news] WHERE ([news_cid] = ?)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="news_cid" SessionField="CID" 
                    Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
        </div>




<%--    在menu层下，放置一个BulletedList，以LINKBUTTON方式控制ads_lv的参数--%>
    <div id="div_menu" class="fr">
        <asp:BulletedList ID="bl_menu" runat="server" DataSourceID="ads_menu" 
            DataTextField="lnc_name" DataValueField="lnc_id" DisplayMode="LinkButton" 
            onclick="bl_menu_Click" >
        </asp:BulletedList>
    
        <asp:AccessDataSource ID="ads_menu" runat="server" DataFile="~/mdb/mydb.mdb" 
            SelectCommand="SELECT [lnc_id], [lnc_name] FROM [list_newsclass]">
        </asp:AccessDataSource>
    
    </div>
    
    </div>
    </form>
</body>
</html>
