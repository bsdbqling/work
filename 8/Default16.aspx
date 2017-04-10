<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default16.aspx.cs" Inherits="Default16" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.8.3.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            

            $("#lab1").mouseenter(function () {
                $("#div_result").fadeIn(200);
            });

            $("#lab1").mouseleave(function () {
                $("#div_result").fadeOut(500);
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <label id="lab1">鼠标移入</label>
        <div id="div_result" style ="display:none;">123</div>
    
    </div>
    </form>
</body>
</html>
