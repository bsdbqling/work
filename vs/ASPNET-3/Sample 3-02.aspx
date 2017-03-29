<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-02.aspx.cs" Inherits="Sample_3_1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>文本框的多种表现形式</h3>

        <div class="d1">单行文本框：  
            <asp:TextBox ID="txt_s" runat="server" Enabled="false"   ></asp:TextBox>   
            <asp:Button ID="btn_reads" runat="server" Text="读取内容并显示" 
                onclick="btn_reads_Click" />
        </div>

        
        
        <div  class="d1">多行文本框：
            <asp:TextBox ID="txt_m" runat="server" TextMode="MultiLine" 
             Height="200px" Width="200px"  ></asp:TextBox>
            <asp:Button ID="btn_readm" runat="server" Text="读取内容并显示" 
                onclick="btn_readm_Click" />
        </div>

        
        
        <div  class="d1">密码文本框：
               <asp:TextBox ID="txt_p" runat="server" TextMode="Password" ></asp:TextBox>
                <asp:Button ID="btn_readp" runat="server" Text="读取内容并显示" 
                onclick="btn_readp_Click" />
        </div>


        <div  class="d1">HTML文本框：
                <input id="txt_html" type="text" runat="server"  />
                <asp:Button ID="btn_readhtml" runat="server" Text="读取内容并显示" 
                onclick="btn_readhtml_Click" />
        </div>


        <br />         <br />          <br />


        显示结果的层：
    <div id="div_result" runat="server" >               </div>

    </div>
    </form>
</body>
</html>
