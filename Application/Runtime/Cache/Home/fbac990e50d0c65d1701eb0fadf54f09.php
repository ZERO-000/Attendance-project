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
			background: url(images/3.jpeg) no-repeat;
			height: 100%;
			width: 100%;
			overflow: hidden;
			background-size: 100%;
		}
	</style>
</head>
<body>
	<div class="form1">
		<h3>辅导员登陆</h3>
		<div class="number">
			<label for="username">账号</label>
			<input type="text" id="uname" class="input">
		</div>
		<div class="number">
			<label for="textpwd">密码</label>
			<input type="password" id="pwd" class="input">
		</div>
		<input class="button" type="submit" name="submit" value="提交">
		<input class="button" type="reset" name="reset" value="重置" />
	</div>
<!-- 	<div  class="animation1"></div>
	<div  class="animation2"></div> -->
</body>
</html>