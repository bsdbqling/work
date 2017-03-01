<?php
$callback=$_GET['callback'];

$userInfo=array('id'=>1,'username'=>'zyzhang','email'=>'zhangtaihu101@163.com');

$result=json_encode($userInfo);

echo $callback."({$result})";
?>