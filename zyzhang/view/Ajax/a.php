<?php
  header('content-type:text/html;charset=utf-8');

  $username = $_GET['username'];
  $age = $_GET['age'];

  echo "你的名字是$username, 年龄是$age " ;

?>
