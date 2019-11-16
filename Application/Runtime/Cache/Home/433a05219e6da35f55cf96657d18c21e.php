<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/kqxt/Public/style/xszc.css">
</head>
<body>
	<div id="stylized" class="myform">
		<form id="form1" name="form1" method="post" action="">
			<h1>学生注册</h1>
			<p>请准确填写注册信息。。。</p>
			<label><span clear="small">账号</span></label>
			<input type="text" name="textfield" id="textfield">
			<label><span clear="small">密码</span></label>
			<input type="text" name="textfield" id="textfield">
			<label><span clear="small">姓名</span></label>
			<input type="text" name="textfield" id="textfield">
			<p id="bianju">所在系别
		  		<select name="" id="">
			  		<option value="机电系">机电系</option>
			  		<option value="信工系">信工系</option>
			  		<option value="中文系">中文系</option>
			  		<option value="数学系">数学系</option>
			  		<option value="外语系">外语系</option>
			  		<option value="艺设系">艺设系</option>
			  		<option value="财经系">财经系</option>
			  		<option value="体育系">体育系</option>
		  		</select>
	  		</p>
	  		<p id="bianju">所在年级
		  		<select name="" id="">
			  		<option value="大一">大一</option>
			  		<option value="大二">大二</option>
			  		<option value="大三">大三</option>
		  		</select>
	  		</p>
			<p id="bianju">所在班级
		  		<select name="" id="">
			  		<option value="1101">1101</option>
			  		<option value="1201">1201</option>
			  		<option value="1301">1301</option>
		  		</select>
		  	</p>


			<button type="submit">注册</button>
			<div clear="spacer"></div>
		</form>
</body>
</html>