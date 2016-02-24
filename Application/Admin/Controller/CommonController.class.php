<?php
namespace Admin\Controller;
use Think\Controller;
/**
*用户后台登录检查
*/
class CommonController extends Controller {
	Public function _initialize() {
		if (!isset($_SESSION['uid']) || !isset($_SESSION['username'])) {
			$this->redirect('Admin/Login/index');
		}
	}
}
