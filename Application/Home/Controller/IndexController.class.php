<?php
namespace Home\Controller;
use Home\Model\MessageViewModel;
use Think\Controller;
use Think\Model;
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
	public function gtm(){
		$this->display();
	}
	public function Judge(){
		$sname = I('post.sname');
		$model = M('attendance');
		$day  = date('D',time());
		$ip = get_client_ip(0,ture);
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
		$his=date('H:i');
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
			->join('student ON attendance.student_id = student.id')
			->join('class ON student.class_id = class.id')
			->join('classtime ON attendance.classtime_id = classtime.id')
			->join('course_jihua ON classtime.course_jihua_id = course_jihua.id')
			->join('course ON course_jihua.course_id = course.id')
			->join('major_jihua ON course_jihua.major_jihua_id = major_jihua.id')
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
			"data" => $User,
			'day' => $day,
			'week' => $week,
			'classStrattime' => $classStrattime,
			$currentTime,
			$his,
			$sname,
			$ip
		 );
        $this->ajaxReturn($result,"json");
	}



	public function kaoqin(){
		$student_id = I('post.student_id');
		$classtime_id = I('post.classtime_id');
		$mac = I('post.mac');
		$kaoqin = I('post.kaoqin');
		$model = M('attendance');
		$model1 = M('mac');
		$model2 = M('ip');
		$ip = get_client_ip();
		$ipp = $model2
		->where([
			'ip'=>$ip
		])
		->field('id')
		->find();
		$mkq = $model1
		->where(['mac'=>$mac])
		->field('id')
		->find();
		$Kq = $model
		->where([
			'student_id'=> $student_id,
			'classtime_id' => $classtime_id
		])
		->save([
			"kaoqin"=>$kaoqin,
			'ip_id' => $ipp[id]
		]);

		$result = array('kaoqin' => $kaoqin ,$Kq,$ipp);
	    $this->ajaxReturn($result,"json");
	}








	public function student_list(){
		$model = M('attendance');
		$model1 = M('attendance');
		$day = date('D',time());
		$currentTime = time();
		$cnt = $currentTime - strtotime("2019-8-26");
		$days = ceil($cnt/(3600*24));
		$week = ceil($days/7);
		$amenddate1 = '09:50';
		$amenddate2 = '11:50';
		$pmenddate1 = "16:00";
		$pmenddate2 = "18:00";
		$his=date('H:i');
		$stu_attend = $model
		->join('student ON attendance.student_id = student.id')
		->join('classtime ON attendance.classtime_id = classtime.id')
		->join('ip ON attendance.ip_id = ip.id')
		->where([
			'classtime.weeks' =>$day,
			'classtime.weeklyTimes'=>$week,
			'classtime.lesson' =>$lesson = (
					$his < $amenddate1
					) ? 1:(
						($his < $amenddate2) ? 3 :(
								($his < $pmenddate1) ? 5 : 7
							)
						)
		])
		->select();
		$stu_at = $model1
		->join('student ON attendance.student_id = student.id')
		->join('classtime ON attendance.classtime_id = classtime.id')
		->where([
			'classtime.weeks' =>$day,
			'classtime.weeklyTimes'=>$week,
			'classtime.lesson' =>$lesson = (
					$his < $amenddate1
					) ? 1:(
						($his < $amenddate2) ? 3 :(
								($his < $pmenddate1) ? 5 : 7
							)
						)
		])
		->select();

		$result = array(
			'data' => $stu_attend,
			'data1' => $stu_at
		);
		$this->ajaxReturn($result,'json');
	}


		public function update_attendance_grade(){
				$name = I('post.name');
				$model = M('attendance');
				$model1 = M('student');
				$s_id = $model1->where(['s_name' => $name])->field('id')->find();
				$uag = $model
				->join('student ON attendance.student_id = student.id')
				->join('classtime ON attendance.classtime_id = classtime.id')
				->where(['student_id' => $s_id[id]])->select();
						$aN = array('AN' =>$uag );
				$this->ajaxReturn($aN,'json');
		}





























}
