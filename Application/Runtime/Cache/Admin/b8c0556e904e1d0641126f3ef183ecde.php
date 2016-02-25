<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>添加文章</title>
	<script charset="utf-8" src="/Blog/Application/Admin/View/Public/editor/kindeditor.js"></script>
	<script charset="utf-8" src="/Blog/Application/Admin/View/Public/editor/lang/zh_CN.js"></script>
	<script>
	        KindEditor.ready(function(K) {
	                window.editor = K.create('#editor_1', {
	                	width: '800px',
	                	height: '500px'
	                });
	        });
	</script>
	<link rel="stylesheet" href="/Blog/Application/Admin/View/Public/Css/add.css">
</head>
<body>
	<div>
		<form action="<?php echo U('Admin/Index/addContent');?>" method="POST">
			<input id="title" type="text" name="title" placeholder="文章标题">
			<textarea id="editor_1" name="content"></textarea>
			<input id="submit" type="submit" name="submit" value="提交">
		</form>
	</div>
</body>
</html>