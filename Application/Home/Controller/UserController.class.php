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
		$s_name = I('post.s_name');
		$s_number = I('post.s_number');
		$model = M('student');
		$student = $model->where("s_name='%s' and s_number='%s'",$s_name,$s_number)->find();
		if ($student) {
			$id=$student['id'];
			session('student.s_name',$s_name);
			session('student.s_number',$s_number);
			header("Location:".U("index/xsqd"));
		} else {
			$this->error('用户名或密码错！');
        }


	}
	public function do_login_teacher(){
		$t_name = I('post.t_name');
		$t_number = I('post.t_number');
		$model = M('teacher');
		$teacher = $model->where("t_name='%s' and t_number='%s'",$t_name,$t_number)->find();
		if ($teacher) {
			$id=$teacher['id'];
			session('teacher.t_name',$t_name);
			header("Location:".U("index/lsjm"));
		} else {
			$this->error('用户名或密码错！');
        }
	}
	public function do_login_assistant(){
		$a_name = I('post.a_name');
		$a_number = I('post.a_number');
		$model = M('assistant');
		$assistant = $model->where("a_name='%s' and a_number='%s'",$a_name,$a_number)->find();
		if ($assistant) {
			$id=$assistant['id'];
			session('assistant.a_name',$a_name);
			header("Location:".U("index/fdyjm"));
		} else {
			$this->error('用户名或密码错！');
        }
	}
}
