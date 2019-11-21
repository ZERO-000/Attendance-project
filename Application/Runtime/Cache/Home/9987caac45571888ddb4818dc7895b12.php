<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
		<script src="/kqxt/Public/js/vue.min.js"></script>
		<script src="/kqxt/Public/js/jquery-3.3.1.min.js"></script>
		<style>
			.qd{
				display: block;
				width: 100px;
				height: 80px;
				margin:  0 auto;
			}
			p{
				font-size: 2rem;
			}
		</style>
	</head>
<body>
	<p><?php echo ($_SESSION['student']['name']); ?></p>
	<p><?php echo ($_SESSION['student']['number']); ?></p>
	<p id="nowTime"></p>
	<button class="qd" type="submit">签到</button>
	<script src="/kqxt/Public/js/xsqd.js"></script>
	<script>

		//
		// function timer(){
		// 	time = new Date();
		// 	year = time.getFullYear();
		// 	month = time.getMonth()+1;
		// 	day = time.getDate();
		// 	hours = time.getHours();
		// 	minutes = time.getMinutes();
		// 	seconds = time.getSeconds();
		// 	weeks = ['星期天','星期一','星期二','星期三','星期四','星期五','星期六'];
		// 	weekIndex = time.getDay();
		// 	week = weeks[time.getDay()];
		// 	document.getElementById("nowTime").innerHTML ='现在时间是：' + year + "年" + month + "月" + day + "日" + "\t" + hours + ":" + minutes +":" + seconds + "\t" + week;
		// }
		// 	setInterval("timer()",1000);

		var btn = document.getElementsByTagName('button')[0];
		btn.onclick = function(){
			$.ajax({
				type:"POST",
				url:"<?php echo U('Judge');?>",
				data:{},
				dataType:'json',
				success:function(e){
					console.log(e);
					// console.log(hours);
					var hours = e.hours;
					document.getElementById("nowTime").innerHTML = hours;

				}

			})
		}

	</script>
</body>
</html>