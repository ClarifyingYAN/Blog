<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Blog后台</title>
	<link rel="stylesheet" href="/blog/Application/Admin/View/Public/Css/index.css">
	<base target="iframe">
</head>
<body>
	<div id="head-bar">
		<a id="homepage" href="<?php echo U('Admin/Index/info');?>">Blog</a>
		<a id="logout" href="<?php echo U('Admin/Login/logout');?>" target="_self">退出</a>
	</div>
	<div id="left-lead">
		<div id="content-manage">
			<div id="content-manage-name">文章管理</div>
			<ul id="content-manage-sons">
				<li class="content-manage-son"><a href="<?php echo U('Admin/Index/add');?>">添加文章</a></li>
				<li class="content-manage-son"><a href="<?php echo U('Admin/Index/show');?>">浏览文章</a></li>
				<li class="content-manage-son"><a href="<?php echo U('Admin/Index/settings');?>">文章管理</a></li>
				<li class="content-manage-son"><a href="<?php echo U('Admin/Index/categary');?>">文章分类</a></li>
			</ul>
		</div>
		<div id="other">
			<div id="other-name">其他设置</div>
		</div>
	</div>
	<div id="right">
		<iframe name="iframe" src="<?php echo U('Admin/Index/info');?>" scrolling="yes" frameborder="0"></iframe>
	</div>
</body>
</html>
<script>
	document.querySelector("#content-manage-name").onclick = function () {
		if (document.querySelector("#content-manage-sons").style.display == "none") {
			document.querySelector("#content-manage-sons").style.display = "block";
		} else {
			document.querySelector("#content-manage-sons").style.display = "none";
		}
	}
</script>