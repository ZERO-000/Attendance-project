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
		$year = date("Y",time());
		$hours =  date("H",time());
		$minutes = date("i",time());
		$seconds = date("s",time());
        $User = $model
			->join('student ON attendance.student_id = student.id')
			->join('classtime ON attendance.classtime_id = classtime.id')
			->join('course_jihua ON classtime.course_jihua_id = course_jihua.id')
			->join('course ON course_jihua.course_id = course.id')
			  // ->jion('major_jihua ON course_jihua.major_jihua_id = major_jihua.id')
			  // ->jion('major ON major_jihua.major_id = major.id')
			  // ->jion('major ON class.major_id = major.id')
			  // ->jion('class ON student.class_id = class.id')
			  ->where(
			   array(
					    'attendance.student_id' => '1',
					    'attendance.classtime_id' => '1',
					    'classtime.course_jihua_id' => '1',
							'course_jihua.course_id' => '1',
					    // 'course_jihua.major_jihua_id' => '1',
					    // 'major_jihua.major_id' => '1',
					    // 'class.major_id' => '1',
					    // 'student.class_id' => '1'
				   )
				 )
		->select();
		// var_dump($result);
		// exit;
		// $arr = array(
		// 	31,28,31,30,31,30,31,30,31,30,31,30
		// )
		$result = array(
			'year' => $year,
			"data" => $User,
			// 'arr' => $arr,
			"hours" => $hours,
			"minutes" => $minutes,
			"seconds" => $seconds,
		 );
		 $arr = array(
			 31,28,31,30,31,30,31,30,31,30,31,30
		 )
		 $sum = 0;
		 $setTime = 237;
		 if{$year/*现在年份 */ - $year /*开学年份*/ == 0}{
			if($year/4 == 0){
				var $arr[1] = 29;
					for(var $i = 0 ; $i< month -1 ; $i++){
					$sum +=$arr[i];
				}
				$sum=$sum+$day - $setTime;
			}else{
				for(var $i = 0 ; $i< month -1 ; $i++){
					$sum +=$arr[i];
				}
				$sum=$sum+$day - $setTime;
			}
		}else{
			if($year/4 == 0){
				var $arr[1] = 29;
					for(var $i = 0 ; $i< month -1 ; $i++){
					$sum +=$arr[i];
				}
				$sum= 366 - $setTime +$sum +$day;
			}else{
				for(var $i = 0 ; $i< month -1 ; $i++){
					$sum +=$arr[i];
				}
				$sum= 365 - $setTime +$sum +$day;
			}

		}
		$sum=$sum+$day - $setTime;
		$week = $sum/7 +1;
        $this->ajaxReturn($result,"json");
        // $this->ajaxReturn($,"json");
	}



}
