<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/kqxt/Public/style/xuesheng.css">
	<style>
		body{
			font-family: "Lucida Grande","lucida Sans Unicode",Verdana,Arial,Helvetica,sans-serif;
			font-size: 12px;
			background: url(/kqxt/Public/images/2.jpg) no-repeat;
			height: 100%;
			width: 100%;
			overflow: hidden;
			background-size: 100%;
		}
	</style>
</head>
<body>
	<div class="form1">
	<form action="/kqxt/index.php/Home/User/do_login_teacher" method="post">
		<h3>老师登陆</h3>
		<div class="number">
			<label for="username">账号</label>
			<input type="text" name="t_name" id="uname" class="input">
		</div>
		<div class="number">
			<label for="textpwd">密码</label>
			<input type="password" name="t_number" class="input">
		</div>
		<input class="button" type="submit" name="submit" value="提交">
		<input class="button" type="reset" name="reset" value="重置" />
	</div>
	</form>
<!-- 	<div  class="animation1"></div>
	<div  class="animation2"></div> -->
</body>
</html>