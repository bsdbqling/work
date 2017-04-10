<%@ Page Language="C#" AutoEventWireup="true" CodeFile="一级二级菜单设置.aspx.cs" Inherits="Sample02_2LevelNav" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.8.3.js" type="text/javascript"></script>
    <script type ="text/javascript">
        $(document).ready(function () {
            $("a.m0").mouseenter(function () {
                $(".smenu").hide();
                $("+.smenu", this).fadeIn(200);
            });


            $("#div_menu").mouseleave(function () {
                $(".smenu").fadeOut(200);
            });

        });
    </script>


<style type ="text/css">
    body{ margin:0px; padding:0px;}
    #div_menu { border:1px solid silver;
                background-image:url(imgs/back_head.jpg);
                background-repeat:repeat-x; 
                 }
    a{ display:block; text-decoration:none; color:Gray;}
    a:hover{ color:#930;}
    a.m0{ margin:10px 0px 10px 0px; padding:0px 10px 0px 10px;}
    a.m1{ padding:10px 25px 10px 25px; font-size:12px;}
    a.m1 +a.m1 { border-top:1px dashed silver;}

    .menuset { float:left; 
              }
    .menuset+.menuset a.m0
            {   border-left:1px solid silver;}
    
    .smenu { position:absolute;
             border:1px solid silver;
             border-top:none;
             background-color:RGB(251,251,251);
             display:none;   }
    
               
</style>
</head>


<body>
    <form id="form1" runat="server">
    <div>


    <div id="div_menu" runat="server">
        
    </div>
    
    </div>
    </form>
</body>
</html>
