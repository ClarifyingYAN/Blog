<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title></title>
	<link rel="stylesheet" href="/Blog/Application/Admin/View/Public/Css/content.css">
</head>
<body>
	<div id="body">
		<h1 id="title"><?php echo ($content["title"]); ?></h1>
		<article id="article">
			<?php echo (htmlspecialchars_decode($content["content"])); ?>
		</article>
	</div>
</body>
</html>