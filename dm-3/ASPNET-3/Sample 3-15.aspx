<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-15.aspx.cs" Inherits="Sample_3_7" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>ImageMap 控件应用</h2>
        <div id="div_p1">
            <p>下面是一张200px * 400px 的图片，建立了4个热区</p>
        
            <asp:ImageMap ID="imgMap" runat="server" ImageUrl="~/imgs/hotarea.jpg">
                <asp:CircleHotSpot X="100" Y="50" Radius="50" NavigateUrl="http://www.51zxw.net" AlternateText="我要自学网" />
                <asp:RectangleHotSpot Top ="100" Left="0" Right="200" Bottom="200" NavigateUrl="http://www.163.com" AlternateText="网易" />
                <asp:PolygonHotSpot Coordinates="10,220,90,210,180,220,180,270,10,270" NavigateUrl="http://www.baidu.com" AlternateText="百度" />
            </asp:ImageMap>
          
            <br />
            <asp:Button ID="Button1" runat="server" Text="添加最后一个热区：淘宝" 
                onclick="Button1_Click" />
            
        
        </div>
    

    
    </div>
    </form>
</body>
</html>
