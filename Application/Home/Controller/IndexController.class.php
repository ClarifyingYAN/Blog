<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    Public function index(){
    	$content = M('content')->select();
    	$this->assign('content', $content);
        $this->display('spring');
    }

    Public function summer() {
    	$this->display();
    }

    Public function autumn() {
    	$this->display();
    }

    Public function winter() {
    	$this->display();
    }
}