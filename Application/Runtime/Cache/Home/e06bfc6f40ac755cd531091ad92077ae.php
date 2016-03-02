<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<title>JEFF'BLOG</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/Blog/Application/Home/View/Public/css/homework-winter.css">
	<script type="text/javascript" src="/Blog/Application/Home/View/Public/js/homework-winter.js"></script>
	<style type="text/css">
		#body{background-image: url(/Blog/Application/Home/View/Public/picture/spring.jpg);}
	</style>
</head>
<body>

	<div id="body" 	>

		<div class="top">
				<div class="logo">
					<i class="iconfont">J&#xe62f;FF'blog</i>
				</div>
				<div id="Clock">
					<p id="Clock1"></p>
					<p id="Clock2"></p>
				</div>
				<div class="poetry">
					<li id="title">早春呈水部张十八员外</li>
					<li id="author">[唐] &nbsp &nbsp &nbsp 韩愈</li>
					<li id="content1">天街小雨润如酥，草色遥看近却无。</li>
					<li id="content2">最是一年春好处，绝胜烟柳满皇都。</li>
				</div>
		</div>

		<div class="middle">
			<div class="nav">
				<nav id="topnav">
				<a href="spring.html" id="topnav_current" class="spring">春</a>
				<a href="summer.html" class="summer">夏</a>
				<a href="autumn.html" class="autumn">秋</a>
				<a href="winter.html" class="winter">冬</a>
				</nav>
			</div>
			<div class="left">
				<article>
					<div class="blog"><a href="##" style="color: white;"><?php echo (strip_tags(htmlspecialchars_decode($content[0]['content']))); ?></a></div>
					<div class="blog"></div>
					<div class="blog"></div>
				</article>
			</div>
			<div class="right">
				<div class="myself"></div><br><br>
				<h2>关于我</h2>
				<p>姓名：Jeff</p>
				<p>职业：学生 ==> <a href="http://www.cqupt.edu.cn/cqupt/index.shtml">我的母校</a></p>
				<p>籍贯：重庆</p>
				<p>电话：134521****5</p>
				<p><a href="http://www.hao123.com/mail" title="给我发邮件^_^" target="_blank">邮箱：1468401336@qq.com</a></p>
				<p>友情链接：</p>
				<p><a href="www.baidu.com" target="_blank">百度一下</a></p>
				<p><a href="http://hongyan.cqupt.edu.cn/" target="_blank">红岩网校</a></p>
				</div>
			</div>
		</div>

		<div class="bottom"></div>

	</div>

</body>

</html>