<%@ Page Language="C#" AutoEventWireup="true" CodeFile="获取数据库数据并显示.aspx.cs" Inherits="Default9" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.8.3.js" type="text/javascript"></script>
    <script type ="text/javascript">
        $(document).ready(function () {
            $(".studentName + div").hide();

            $(".studentName").click(function () {
                $(".studentName + div").hide();
                $("+div", this).show(600);
            });

        });
    </script>

    <style type ="text/css">
        .studentName{ padding:5px; background-color:#99CC33; cursor:pointer;
                      }
        .studentName+div{ border-bottom:1px solid gray;  padding:10px;}
        .studentName+div span{ margin:10px;}
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div runat="server" id="div_itemholder">
    
    </div>
    </form>
</body>
</html>
