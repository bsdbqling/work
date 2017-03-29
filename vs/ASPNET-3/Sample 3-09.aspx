<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-09.aspx.cs" Inherits="Sample_3_7_4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .blNavBar
            { padding:0px; 
              background-image:url(imgs/back_navbar.png); background-repeat:repeat-x;
              border-bottom:1px solid #dedede; border-top:1px solid #ccc; 
                }
        .blNavBar li
            { display:inline-block; 
              padding:15px 30px 15px 30px; 
              border-right:1px solid #dedede; }
        .blNavBar a
            { font-size:14px;
              text-decoration:none; 
              color:#666; }      
        .blNavBar a:hover
            { color:Red;}      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:BulletedList ID="BulletedList1" runat="server"  CssClass="blNavBar"
            DataSourceID="AccessDataSource1" DataTextField="网站名称" DataValueField="网址" 
            DisplayMode="HyperLink">
        </asp:BulletedList>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/DATA/51ZXW.mdb" SelectCommand="SELECT * FROM [TB_HLINKS]">
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
