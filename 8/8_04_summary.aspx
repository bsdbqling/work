<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8_04_summary.aspx.cs" Inherits="_8_04_summary" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS_8.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<%--    将单元格的ID设置为与字段名相关，是本程序的第1个巧妙点--
        
        在这个程序中，用了2种类型的表格：HTML控件的表格，WEB控件的表格。
        构建的形式和功能都非常的相似，最终形成的HTML代码，也基本一致。
        但是，对于程序来说，HTMLTABLECELL和TABLECELL是完全不同的2个东西。
        是不同的类；
        调用和编程时，要调用正确的属性，才可以获得正确的结果.
        
        不要混用。更不能将两者看成是等价的。


--%>

    <table id="tbl_summary" >
        <tr>
            <th colspan="4">考生成绩汇总表</th>
            
        </tr>

        <tr>
            <td>语文优秀名单：</td>
            <td id="tdgood_cj_yuwen" runat="server"></td>
            <td>语文不及格名单：</td>
            <td id="tdfail_cj_yuwen"  runat="server"></td>
        </tr>

        <tr>
            <td>数学优秀名单：</td>
            <td id="tdgood_cj_shuxue"  runat="server"></td>
            <td>数学不及格名单：</td>
            <td id="tdfail_cj_shuxue"  runat="server"></td>
        </tr>

        <tr>
            <td>物理优秀名单：</td>
            <td id="tdgood_cj_wuli"  runat="server"></td>
            <td>物理不及格名单：</td>
            <td id="tdfail_cj_wuli"  runat="server"></td>
        </tr>

        <tr>
            <td>化学秀名单：</td>
            <td id="tdgood_cj_huaxue"  runat="server"></td>
            <td>化学不及格名单：</td>
            <td id="tdfail_cj_huaxue"  runat="server"></td>
        </tr>

        <tr>
            <td>英语优秀名单：</td>
            <td id="tdgood_cj_yingyu"  runat="server"></td>
            <td>英语不及格名单：</td>
            <td id="tdfail_cj_yingyu"  runat="server">
            </td>
        </tr>
    </table>


    <br />    <br />    <br />

        <asp:Table ID="tbl_summary2" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell ColumnSpan="4" >成绩汇总表【WEB控件】</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow >
                <asp:TableCell>语文不及格名单：</asp:TableCell>
                <asp:TableCell ID="aspfail_cj_yuwen" ></asp:TableCell>
                <asp:TableCell>语文优秀名单：</asp:TableCell>
                <asp:TableCell ID="aspgood_cj_yuwen" ></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow >
                <asp:TableCell>数学不及格名单：</asp:TableCell>
                <asp:TableCell ID="aspfail_cj_shuxue" ></asp:TableCell>
                <asp:TableCell>数学优秀名单：</asp:TableCell>
                <asp:TableCell ID="aspgood_cj_shuxue" ></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow >
                <asp:TableCell>化学不及格名单：</asp:TableCell>
                <asp:TableCell ID="aspfail_cj_huaxue" ></asp:TableCell>
                <asp:TableCell>化学优秀名单：</asp:TableCell>
                <asp:TableCell ID="aspgood_cj_huaxue" ></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow >
                <asp:TableCell>物理不及格名单：</asp:TableCell>
                <asp:TableCell ID="aspfail_cj_wuli" ></asp:TableCell>
                <asp:TableCell>物理优秀名单：</asp:TableCell>
                <asp:TableCell ID="aspgood_cj_wuli" ></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow >
                <asp:TableCell>英语不及格名单：</asp:TableCell>
                <asp:TableCell ID="aspfail_cj_yingyu" ></asp:TableCell>
                <asp:TableCell>英语优秀名单：</asp:TableCell>
                <asp:TableCell ID="aspgood_cj_yingyu" ></asp:TableCell>
            </asp:TableRow>


        </asp:Table>


    </div>
    </form>
</body>
</html>
