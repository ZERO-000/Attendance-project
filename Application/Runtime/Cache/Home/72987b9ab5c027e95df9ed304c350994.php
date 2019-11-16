<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="/kqxt/Public/style/xuesheng.css">
</head>
<body>
	<div id="stylized" class="myform">
		<form id="form1" name="form1" method="post" action="/kqxt/index.php/Home/User/do_login">
			<h1>登陆</h1>
			<p>请准确填写登录信息。。。</p>
			<label><span clear="small">账号</span></label>
			<input type="text" name="name" id="textfield">
			<label><span clear="small">密码</span></label>
			<input type="text" name="number" id="textfield">
			<button type="submit">登陆</button>
			<a href="xszc.html">点此注册</a>
			<div clear="spacer"></div>
		</form>
	</div>
</body>
</html>