<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>文章显示</title>
</head>
<body>
	<div>
		<?php if(is_array($show)): foreach($show as $key=>$v): ?><h1 style="text-align: center;"><?php echo ($v["title"]); ?></h1>
			<div>
				<?php echo (htmlspecialchars_decode($v["content"])); ?>
			</div>
			<div>
			<?php echo (date("Y-m-d H:i", $v["time"])); ?>
			</div>
			<hr/><?php endforeach; endif; ?>
	</div>
	<iframe src="<?php echo U('Admin/Index/show');?>"></iframe>
</body>
</html>