<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/kqxt/Public/style/xuesheng.css">
</head>
<body>
	<div class="form1">
		<form id="form1" name="form1" method="post" action="/kqxt/index.php/Home/User/do_login_student">
		<h3>学生登陆</h3>
		<div class="number">
			<label for="username">名字</label>
			<input type="text" name="s_name" class="input">
		</div>
		<div class="number">
			<label for="textpwd">学号</label>
			<input type="password" name="s_number" class="input">
		</div>
		<input class="button" type="submit" name="submit" value="提交">
		<input class="button" type="reset" name="reset" value="重置" />
		</form>
	</div>
<!-- 	<div  class="animation1"></div>
	<div  class="animation2"></div> -->
</body>
</html>