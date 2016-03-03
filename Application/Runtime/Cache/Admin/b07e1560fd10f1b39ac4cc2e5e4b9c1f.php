<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>管理</title>
	<link rel="stylesheet" href="/blog/Application/Admin/View/Public/Css/settings.css">
</head>
<body>
	<div id="table">
		<table border="1">
			<tr>
				<th>标题</th>
				<th>创建时间</th>
				<th>访问</th>
				<th>喜欢</th>
				<th>管理</th>
			</tr>
			<?php if(is_array($list)): foreach($list as $key=>$v): ?><tr>
					<td id="title"><?php echo ($v["title"]); ?></td>
					<td id="time"><?php echo (date( "Y-m-d H:i", $v["time"])); ?></td>
					<td id="viewed"><?php echo ($v["viewed"]); ?></td>
					<td id="like"><?php echo ($v["like"]); ?></td>
					<td id="del"><a href="<?php echo U('Admin/Index/del', array('id' => $v['id']));?>">删除</a></td>
				</tr><?php endforeach; endif; ?>
		</table>
		<div id="page"><?php echo ($page); ?></div>
	</div>
</body>
</html>