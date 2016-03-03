<?php
namespace Admin\Controller;
use Admin\Controller;
/**
 * 文章
 */
class ContentController extends CommonController {

	Public function index() {
		$id = I('id', '', intval);

		$content = new \Admin\Model\ContentRelationModel();
		$where['id'] = $id;
		$show = $content->where($where)->relation(true)->find();
		$this->assign('content', $show);

		$this->display();
	}
}
 ?>
