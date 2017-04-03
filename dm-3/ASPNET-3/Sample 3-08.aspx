<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-08.aspx.cs" Inherits="Sample_3_7_4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .style1 li
            { display:inline-block;
              width:100px;
              padding:5px; 
               }    
    
        .style2 li
            { padding:15px; 
              list-style-type:decimal-leading-zero;
               }    
        
        .style3 li
            { padding:45px 0px 0px 45px; 
              color:Gray;
              cursor:pointer;
               }   
        .style3 li:hover
            { color:Red;}
    
    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:RadioButton ID="RadioButton1" runat="server" Text = "样式1：横向排列" 
                GroupName="style" AutoPostBack="true" 
                oncheckedchanged="RadioButton1_CheckedChanged"  /> &nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text = "样式2：纵向排列" 
                GroupName="style"  AutoPostBack="true" 
                oncheckedchanged="RadioButton2_CheckedChanged"   />  &nbsp;
            <asp:RadioButton ID="RadioButton3" runat="server" Text = "样式3：大间距纵向排列,并以超链接方式显示" 
                GroupName="style"   AutoPostBack="true" 
                oncheckedchanged="RadioButton3_CheckedChanged"  />  &nbsp;
        </div>

        <div>
            <asp:BulletedList ID="bl_names" runat="server" CssClass="style2" 
                DataSourceID="AccessDataSource1" DataTextField="网站名称" 
                DataValueField="网址">
            </asp:BulletedList>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/DATA/51ZXW.mdb" 
                SelectCommand="SELECT [网站名称], [网址] FROM [TB_HLINKS]">
            </asp:AccessDataSource>
        </div>
    </div>
    </form>
</body>
</html>
