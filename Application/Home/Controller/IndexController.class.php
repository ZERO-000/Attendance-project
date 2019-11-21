<?php
namespace Home\Controller;
use Home\Model\MessageViewModel;
use Think\Controller;
use Think\Model;
use Think\Page;
class IndexController extends Controller
{
	public function index(){
		$this->display();
	}
	public function fdyjm(){
		$this->display();
	}
	public function lsjm(){
		$this->display();
	}
	public function Judge(){
		// $where = array();
		$model = M('attendance');
		// $hours = data(h);
		// $time = time();
		// date("y-m-d",$time);
		$hours =  date("H",time());
		$minutes = date("i",time());
		$seconds = date("s",time());
        $User = $model
		->join('student ON attendance.student_id = student.id')
		->join('classtime ON attendance.classtime_id = classtime_id')
		->where(
			array(
				'attendance.student_id' => '1',
				'attendance.classtime_id' => '1'
			)
		)
		->select();
		// var_dump($result);
		// exit;
		$result = array(
			"data" => $User ,
			"hours" => $hours,
			"minutes" => $minutes,
			"seconds" => $seconds
		 );
        $this->ajaxReturn($result,"json");
        // $this->ajaxReturn($,"json");
	}



}
