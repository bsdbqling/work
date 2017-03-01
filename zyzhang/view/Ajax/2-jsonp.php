<?php
//必须 不然报错
header('Access-Control-Allow-Origin:*');

$userInfo=array('id'=>1,'username'=>'zyzhang','email'=>'zhangtaihu101@163.com');

echo json_encode($userInfo);

?>