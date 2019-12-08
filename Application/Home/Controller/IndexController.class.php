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
		$sname = I('post.sname');
		$kaoqin  = I('post.kaoqin');
		$model = M('attendance');
		// $hours = data(h);
		// $time = time();
		// date("y-m-d",$time);
		$day = date('D',time());
		$year = date("Y",time());
		$hours =  date("H",time());
		$minutes = date("i",time());
		$seconds = date("s",time());
		$currentTime = time();//当前时间
		$cnt = $currentTime - strtotime("2019-8-26");//与已知时间的差值
		$days = ceil($cnt/(3600*24));//算出天数
		$week = ceil($days/7);

		$amstartdate1="08:10";
		$amenddate1 = '09:50';
		$amstartdate2 = "10:10";
		$amenddate2 = '11:50';
		$pmstartdate1 = "14:30";
		$pmenddate1 = "16:00";
		$pmstartdate2 = "16:30";
		$pmenddate2 = "18:00";
		$his=date('10:50');
		$amHour1 = floor((strtotime($his)-strtotime($amstartdate1))%86400/3600);
		$amMinute1 = floor((strtotime($his)-strtotime($amstartdate1))%86400%3600/60);
		$amHour2 = floor((strtotime($his)-strtotime($amstartdate2))%86400/3600);
		$amMinute2 = floor((strtotime($his)-strtotime($amstartdate2))%86400%3600/60);
		$pmHour1 = floor((strtotime($his)-strtotime($pmstartdate1))%86400/3600);
		$pmMinute1 = floor((strtotime($his)-strtotime($pmstartdate1))%86400%3600/60);
		$pmHour2 = floor((strtotime($his)-strtotime($pmstartdate2))%86400/3600);
		$pmMinute2 = floor((strtotime($his)-strtotime($pmstartdate2))%86400%3600/60);
		$classStrattime = [
			"amHour1" => $amHour1,
			"amMinute1" => $amMinute1,
			"amHour2" => $amHour2,
			"amMinute2" => $amMinute2,
			"pmHour1" => $pmHour1,
			"pmMinute1" => $pmMinute1,
			"pmHour2" => $pmHour2,
			"pmMinute2" => $pmMinute2

		];




    	$User = $model
			// ->join('student')
			// ->join('classtime')
			// ->join("course_jihua")
			// ->join('course')
			// ->join('major_jihua')
			// ->join('major')
			// ->join('class')
			->join('student ON attendance.student_id = student.id')
			->join('class ON student.class_id = class.id')
			->join('classtime ON attendance.classtime_id = classtime.id')
			->join('course_jihua ON classtime.course_jihua_id = course_jihua.id')
			->join('course ON course_jihua.course_id = course.id')
			->join('major_jihua ON course_jihua.major_jihua_id = major_jihua.id')
			->join('major ON major_jihua.major_id = major.id')
			// ->join('major ON class.major_id = major.id')
			->where(
					[
						'student.s_name' => $sname,
						'classtime.weeks' => $day,
						'classtime.weeklyTimes' => $week,
						'classtime.lesson' =>$lesson = (
								$his < $amenddate1
								) ? 1:(
									($his < $amenddate2) ? 3 :(
											($his < $pmenddate1) ? 5 : 7
										)
									)
					]
				)

		->select();
		$result = array(
			'year' => $year,
			"data" => $User,
			'day' => $day,
			"hours" => $hours,
			"minutes" => $minutes,
			"seconds" => $seconds,
			'week' => $week,
			$currentTime,
			$his,
			$sname,
			$lesson,
			$kaoqin,
			'classStrattime' => $classStrattime
		 );


        $this->ajaxReturn($result,"json");
        // $this->ajaxReturn($,"json");
	}

	public function kaoqin(){
		$student_id = I('post.student_id');
		$classtime_id = I('post.classtime_id');
		$kaoqin = I('post.kaoqin');
		$model = M('attendance');
		$Kq = $model
		->where([
			'student_id'=> $student_id,
			'classtime_id' => $classtime_id
		])
		->save(["kaoqin"=>$kaoqin]);

		$result = array('kaoqin' => $kaoqin ,$Kq);
	    $this->ajaxReturn($result,"json");
	}
}
