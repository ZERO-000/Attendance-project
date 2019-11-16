<?php
namespace Home\Controller;
use Think\Controller;

class UserController extends Controller
{
	public function xuesheng(){
		$this->display();
	}
	public function laoshi(){
		$this->display();
	}
	public function fudaoyuan(){
		$this->display();
	}


	public function do_login_student(){
		$name = I('post.name');
		$number = I('post.number');
		$model = M('student');
		$student = $model->where("name='%s' and number='%s'",$name,$number)->find();
		if ($student) {
			$id=$student['id'];
			session('student.name',$name);
			header("Location:".U("index/xsqd"));
		} else {
			$this->error('用户名或密码错！');
        }
		
		
	}
	public function do_login_teacher(){
		$name = I('post.name');
		$number = I('post.number');
		$model = M('teacher');
		$teacher = $model->where("name='%s' and number='%s'",$name,$number)->find();
		if ($teacher) {
			$id=$teacher['id'];
			session('teacher.name',$name);
			header("Location:".U("index/lsjm"));
		} else {
			$this->error('用户名或密码错！');
        }	
	}
	public function do_login_assistant(){
		$name = I('post.name');
		$number = I('post.number');
		$model = M('assistant');
		$assistant = $model->where("name='%s' and number='%s'",$name,$number)->find();
		if ($assistant) {
			$id=$assistant['id'];
			session('assistant.name',$name);
			header("Location:".U("index/fdyjm"));
		} else {
			$this->error('用户名或密码错！');
        }
	}
}