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
        $categary = M('categary');
        $cat = $categary->select();
        $this->assign('categary', $cat);

        $where[id] = I('id', '', intval);
        $content = M('content')->where($where)->select();
        $this->assign('content', $content);

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
    	$data['author'] = I('author');
    	$data['title'] = I('title');
    	$data['content'] = I('content');
    	$data['time'] = time();
        $data['cid'] = I('categary');

    	if ($content->data($data)->add()) {
    		$this->success('添加成功', U('Admin/Index/show'));
    	}
    }


    //显示文章
    Public function show() {
        $word = I('word');
        $content = new \Admin\Model\ContentRelationModel();

        $where['title'] = array('like', "%{$word}%");
        $where['content'] = array('like', "%{$word}%");
        $where['_logic'] = 'OR';

        $count = $content->where($where)->count();

        if($count == 0) {
            echo '没有';
        }

        $Page = new \Think\Page($count,6);
        $Page->setconfig('header', '共 %TOTAL_ROW% 篇文章');
        $Page->setconfig('prev', '上一页');
        $Page->setconfig('next', '下一页');
        $Page->setconfig('theme', '%HEADER% %FIRST% %UP_PAGE% %LINK_PAGE% %DOWN_PAGE% %END%');

        $show = $Page->show();
        $this->assign('page', $show);

        $list = $content
            ->where($where)
            ->order('time desc')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->relation(true)
            ->select();
        $this->assign('show', $list);

        $this->display('show');
    }


    // 文章管理
    Public function settings() {
    	$content = M('content');
    	$count = $content->count();
    	$Page = new \Think\Page($count,10);

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
    		$this->success('删除成功', U('Admin/Index/settings'));
    	} else {
    		$this->error('删除失败');
    	}

    }


    //文章分类
    Public function categary() {
        $categary = M('categary');
        $cat = M('categary')->select();
        $this->assign('categary', $cat);
        $this->display();
    }

    Public function addcat() {
        if (!IS_POST) {
            $this->error('非法请求');
        }

        $categary = M('categary');

        if (I('name') == '') {
            $this->error('名称不能为空');
        }
        $data['name'] = I('name');


        if ($categary->data($data)->add()) {
            $this->success('添加成功', U('Admin/Index/categary'));
        } else {
            $this->error('添加失败');
        }
    }
    Public function catdel() {
        if (!IS_GET) {
            $this->error('非法请求');
        }

        $categary = M('categary');
        $Where['id'] = I('id', '', intval);

        if ($categary->where($Where)->delete()) {
            $this->success('删除成功', U('Admin/Index/categary'));
        } else {
            $this->error('删除失败');
        }
    }

}