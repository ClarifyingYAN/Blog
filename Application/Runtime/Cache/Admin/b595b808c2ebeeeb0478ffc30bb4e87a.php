<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/Blog/Application/Admin/View/Public/Css/index.css">
</head>
<body>
	<div id="head-bar">
		<a id="homepage" href="##">Blog</a>
		<a id="logout" href="<?php echo U('Admin/Login/logout');?>">退出</a>
	</div>
	<div id="left-lead">
		<div id="content-manage">
			<div id="content-manage-name">
				文章管理
			</div>
			<ul id="content-manage-sons">
				<li class="content-manage-son"><a href="##">添加文章</a></li>
				<li class="content-manage-son"><a href="##">浏览文章</a></li>
				<li class="content-manage-son"><a href="##">文章管理</a></li>
			</ul>
		</div>
	</div>
</body>
</html>