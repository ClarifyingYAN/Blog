<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>文章分类</title>
	<link rel="stylesheet" href="/Blog/Application/Admin/View/Public/Css/categary.css">
</head>
<body>
	<div id="categary">
		<div id="categary-name">
			<ol>
				<?php if(is_array($categary)): foreach($categary as $key=>$v): ?><li>
						<a href="##" style="display: inline-block;"><?php echo ($v["name"]); ?></a>
						<a href="<?php echo U('Admin/Index/catdel', array('id' => $v['id']));?>" style="display: inline-block;">删除</a>
					</li><?php endforeach; endif; ?>
			</ol>
		</div>
		<div id="add-cat">
			<form action="<?php echo U('Admin/Index/addcat');?>" method="POST">
				<input type="text" name="name" placeholder="分类名">
				<input type="submit" name="submit" value="添加">
			</form>
		</div>
	</div>
</body>
</html>