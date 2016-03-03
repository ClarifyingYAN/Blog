<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>文章显示</title>
	<link rel="stylesheet" href="/blog/Application/Admin/View/Public/Css/show.css">
</head>
<body>
	<div id="show">
		<div id="search">
			<form action="<?php echo U('Admin/Index/show');?>" method="POST">
				<input id="search-txt" type="text" name="word">
				<input id="search-btn" type="submit" name="submit" value="SEARCH">
			</form>
		</div>
		<div id="content">
			<?php if(is_array($show)): foreach($show as $key=>$v): ?><article class="article">
					<div id="top">
						<h1><a id="title" href="<?php echo U('Admin/Content/index', array('id' => $v['id']));?>"><?php echo ($v["title"]); ?></a></h1>
						<p id="info"><span id="author">By:<?php echo ($v["author"]); ?></span>&nbsp;&nbsp;&nbsp;<span id="viewed">被围观过:<?php echo ($v["viewed"]); ?>次</span><span id="categary" style="margin-left: 10px;">|分类:<?php echo ($v[categary][name]); ?></span></p>
						<hr>
					</div>
					<div id="body">
						<?php echo (strip_tags(htmlspecialchars_decode($v["content"]))); ?>
					</div>
					<div id="bottom">
						<hr>
						<div id="time">
							<?php echo (date("Y-m-d H:i", $v["time"])); ?>
						</div>
					</div>
				</article><?php endforeach; endif; ?>
			<div id="page"><?php echo ($page); ?></div>
		</div>
	</div>
</body>
</html>