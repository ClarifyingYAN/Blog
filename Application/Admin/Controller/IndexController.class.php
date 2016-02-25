<?php
namespace Admin\Controller;
use Admin\Controller;
class IndexController extends CommonController {
	// 后台界面
    public function index(){
        $this->display();
    }


    // 写文章功能
    Public function add() {
    	$this->display();
    }
    Public function addContent() {
    	if(!IS_POST){
    		$this->error('非法请求');
    	}

    	if (I('title') == '') {
    		$this->error('必须输入标题');
    	}

    	$content = M('content');
    	$data['title'] = I('title');
    	$data['content'] = I('content');
    	$data['time'] = time();

    	if ($content->data($data)->add()) {
    		$this->success('添加成功', U('Admin/Index/show'));
    	}
    }


    //显示文章
    Public function show() {
    	$content = M('content');
    	$show = $content->select();
    	$this->assign('show', $show);
    	$this->display();
    }
}