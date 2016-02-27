<?php
namespace Admin\Controller;
use Admin\Controller;
class IndexController extends CommonController {
	// 后台界面
    public function index(){
        $this->display();
    }


    //info
    Public function info() {
    	$User = M('user');
    	$where['username'] = session('username');
    	$info = $User->where($where)->field('password', true)->find();
    	$this->assign('info', $info);
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

    // 文章管理
    Public function settings() {
    	$content = M('content');
    	$count = $content->count();
    	$Page = new \Think\Page($count,2);
    	$Page->setconfig('header', '共 %TOTAL_ROW% 篇文章');
    	$Page->setconfig('prev', '上一页');
    	$Page->setconfig('next', '下一页');
    	$Page->setconfig('theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');
    	$show = $Page->show();
    	$this->assign('page', $show);

    	$list = $content->order('time desc')->limit($Page->firstRow.','.$Page->listRows)->select();
    	$this->assign('list', $list);
    	$this->display();
    }
    Public function del() {
    	if (!IS_GET) {
    		$this->error('非法请求');
    	}

    	$content = M('content');
    	$where['id'] = I('id', '', intval);

    	if ($content->where($where)->delete()) {
    		$this->success('成功删除', U('Admin/Index/settings'));
    	} else {
    		$this->error('删除失败');
    	}

    }

}