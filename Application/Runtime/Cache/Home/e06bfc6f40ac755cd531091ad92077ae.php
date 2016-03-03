<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<title>JEFF'BLOG</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/blog/Application/Home/View/Public/Css/homework-winter.css">
	<script type="text/javascript" src="/blog/Application/Home/View/Public/Css/homework-winter.js"></script>
	<style type="text/css">
		#body{background-image: url(/blog/Application/Home/View/Public/picture/spring.jpg);}
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
				<a href="<?php echo U('Home/Index/index');?>" id="topnav_current" class="spring">春</a>
				<a href="<?php echo U('Home/Index/summer');?>" class="summer">夏</a>
				<a href="<?php echo U('Home/Index/autumn');?>" class="autumn">秋</a>
				<a href="<?php echo U('Home/Index/winter');?>" class="winter">冬</a>
				</nav>
			</div>
			<div class="left">
				<article>
					<div class="blog"></div>
					<div class="blog"></div>
					<div class="blog"></div>
				</article>
			</div>
			<div class="right">
				<div class="myself"></div><br><br>
				<h2>关于我</h2>
				<p><i class="iconfont2">&#xe638;</i>姓名：Jeff</p>
				<p><i class="iconfont2">&#xe6b4;</i>职业：学生 ==> <a href="http://www.cqupt.edu.cn/cqupt/index.shtml">我的母校</a></p>
				<p><a href="http://map.baidu.com/" target="_blank"><i class="iconfont2">&#xe650;</i>籍贯：重庆</a></p>
				<p><i class="iconfont2">&#xe67e;</i>电话：134521****5</p>
				<p><a href="http://www.hao123.com/mail" title="给我发邮件^_^" target="_blank"><i class="iconfont2">&#xe62c;</i>邮箱：</br>1468401336@qq.com</a></p>
				<h2>友情链接：</h2>
				<p><a href="https://www.baidu.com/" target="_blank"><i class="iconfont2">&#xe649;</i>百度一下</a></p>
				<p><a href="http://hongyan.cqupt.edu.cn/" target="_blank"><i class="iconfont2">&#xe607;</i>红岩网校</a></p>
				</div>
			</div>
		</div>

		<div class="bottom"></div>

	</div>

</body>

</html>