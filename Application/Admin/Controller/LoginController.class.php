<?php
namespace Admin\Controller;
use Think\Controller;
/**
*后台登录
*/
class LoginController extends Controller {
	//后台登录界面
	function Index() {
		$this->display();
	}

	//	后台登录
	function Login() {
		$username = I('username');
		$password = I('password', '', 'md5');

		if (!IS_POST) {
			$this->error('非法请求');
		}

		$user = M('user')->where(array('username' => $username))->find();

		if (!$user || $user['password'] != $password) {
			$this->error('登陆帐号或密码错误');
		}

		$data = array(
			'id' => $user['id'],
			'loginip' => get_client_ip(),
			'logintime' => time(),
			);
		M('user')->save($data);

		session('uid', $user['id']);
		session('username', $user['username']);
		session('logintime', date('Y-m-d H:i:s', $user['logintime']));
		session('loginip', $user['loginip']);

		$this->redirect('Admin/Index/index');

	}
}
?>