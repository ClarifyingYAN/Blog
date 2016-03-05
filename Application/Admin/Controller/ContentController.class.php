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


    // 文章重编辑
    Public function edit () {
        $categary = M('categary');
        $cat = $categary->select();
        $this->assign('categary', $cat);

        $where[id] = I('id', '', intval);
        $content = M('content')->where($where)->select();
        $this->assign('content', $content);

        $this->display();
    }

    Public function update() {
        if(!IS_POST){
            $this->error('非法请求');
        }

        if (I('title') == '') {
            $this->error('必须输入标题');
        }

        $content = M('content');
        $data['author'] = I('author');
        $data['title'] = I('title');
        $data['content'] = I('content');
        $data['time'] = time();
        $data['cid'] = I('categary');

        $id = I('get.id', '', intval);
    	$where['id'] = $id;

        if ($content->where($where)->data($data)->save()) {
            $this->success('修改成功', U('Admin/Content/index', array('id' => $id)));
        }
    }
}
 ?>
