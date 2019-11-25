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


		$currentTime=time('2019-12-2');//当前时间
		$cnt=$currentTime-strtotime("2019-8-26");//与已知时间的差值
		$days = floor($cnt/(3600*24));//算出天数
		$week = $days/7 + 1;
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





function DiffDate( $data1 = "2011-01-06", $data2 = "2015-06-16") {
		  if (strtotime($date1) > strtotime($date2)) {
		    $ymd = $date2;
		    $date2 = $date1;
		    $date1 = $ymd;
		  }
		  list($y1, $m1, $d1) = explode('-', $date1);
		  list($y2, $m2, $d2) = explode('-', $date2);
		  $y = $m = $d = $_m = 0;
		  $math = ($y2 - $y1) * 12 + $m2 - $m1; //相差总月数
		  $y = round($math / 12);  //相差年数
		  $m = intval($math % 12);  //相差月数
		  $mm = $math; //相差总月数
		  $d = (mktime(0, 0, 0, $m2, $d2, $y2) - mktime(0, 0, 0, $m2, $d1, $y2)) / 86400;
		  if ($d < 0) {
		    $m -= 1;
		    $d += date('j', mktime(0, 0, 0, $m2, 0, $y2));
		  }
		  $m < 0 && $y -= 1;
 	  		// DiffDate("2011-01-06","2015-06-16");
		  return $aa = array($y, $m, $d,$mm,$bbb);
		  $this->ajaxReturn($aa,"json");
		}

}
