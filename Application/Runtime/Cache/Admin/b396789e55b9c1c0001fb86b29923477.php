<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>信息</title>
	<link rel="stylesheet" href="/blog/Application/Admin/View/Public/Css/info.css">
</head>
<body>
	<div id="info">
		<div id="card">
			<div id="username">用户:<?php echo ($info['username']); ?></div>
			<div id="logintime">登录时间:<?php echo (date( 'Y-m-d H:i:s', $info['logintime'])); ?></div>
			<div id="loginip">登录IP:<?php echo ($info['loginip']); ?></div>
		</div>
	</div>
</body>
</html>