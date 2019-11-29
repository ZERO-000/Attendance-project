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
		$day = date('D',time());
		$year = date("Y",time());
		$hours =  date("H",time());
		$minutes = date("i",time());
		$seconds = date("s",time());
		$currentTime=time();//当前时间
		$cnt=$currentTime-strtotime("2019-8-26");//与已知时间的差值
		$days = floor($cnt/(3600*24));//算出天数
		$week = floor($days/7) + 1;
    $User = $model
			->join('student')
			->join('classtime')
			->join("course_jihua")
			->join('course')
			->join('major_jihua')
			->join('major')
			->join('class')
			// ->join('course_jihua ON classtime.course_jihua_id = course_jihua.id')
			// ->join('course ON course_jihua.course_id = course.id')
		  // ->join('major_jihua ON course_jihua.major_jihua_id = major_jihua.id')
		  // ->join('major ON major_jihua.major_id = major.id')
		  // ->join('major ON class.major_id = major.id')
		  // ->join('class ON student.class_id = class.id')
			  // ->where(
			  //  array(
				// 	    'attendance.student_id' => '1',
				// 	    'attendance.classtime_id' =>"1",
				// 	    'classtime.course_jihua_id' => '1',
				// 			'course_jihua.course_id' => '1',
				// 	    'course_jihua.major_jihua_id' => '1',
				// 	    'major_jihua.major_id' => '1',
				// 	    'class.major_id' => '1',
				// 	    'student.class_id' => '1',
				// 			// 'classtime.weeks' => "周一"
				//    )
				//  )
		->select();

		// $this->ajaxReturn($days);
		// var_dump($result);
		// exit;
		// $arr = array(
		// 	31,28,31,30,31,30,31,30,31,30,31,30
		// )
		$result = array(
			'year' => $year,
			"data" => $User,
			'day' => $day,
			// 'arr' => $arr,
			"hours" => $hours,
			"minutes" => $minutes,
			"seconds" => $seconds,
			'week' => $week
		 );


        $this->ajaxReturn($result,"json");
        // $this->ajaxReturn($,"json");
	}
}
