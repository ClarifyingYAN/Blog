<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/Blog/Application/Admin/View/Public/Css/index.css">
	<link rel="stylesheet" href="/Blog/Application/Admin/View/Public/Css/iconfont/login/iconfont.css">
</head>
<body>
	<div id="login_box">
		<form action="<?php echo U('Login/login');?>" method="POST">
			<p class="input">
				<span><i class="iconfont" style="font-size: 28px;">&#xe60e;</i></span>
				<input type="text" name="username" placeholder="username">
			</p>
			<p class="input">
				<span><i class="iconfont" style="font-size: 28px;">&#xe6a6;</i></span>
				<input type="password" name="password" placeholder="password">
			</p>
			<p id="login_btn"><input id="submit" type="submit" name="submit" value="登录"></p>
		</form>
	</div>
</body>
</html>