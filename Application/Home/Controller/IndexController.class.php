<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    Public function index() {
    	$content = M('content')->order('time desc')->select();
    	$this->assign('content', $content);

        $info = M('other')->select();
        $this->assign('info', $info);
        $this->display('spring');
    }

    Public function summer() {
        $content = M('content')->order('time desc')->select();
        $this->assign('content', $content);

        $info = M('other')->select();
        $this->assign('info', $info);
    	$this->display();
    }

    Public function autumn() {
        $content = M('content')->order('time desc')->select();
        $this->assign('content', $content);

        $info = M('other')->select();
        $this->assign('info', $info);
    	$this->display();
    }

    Public function winter() {
        $content = M('content')->order('time desc')->select();
        $this->assign('content', $content);

        $info = M('other')->select();
        $this->assign('info', $info);
    	$this->display();
    }

    Public function content() {
        $content = M('content');
        $where['id'] = I('id');
        $list = $content->where($where)->find();
        $this->assign('content', $list);
        $this->display();
    }
}