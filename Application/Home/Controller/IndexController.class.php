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
		$model=M('attendance');
        $result=$model->table('attendance,classtime,student')-where('attendance.id = classtime.id')->select();

        $this->ajaxReturn($result,"json");
	}


	public function orderList(){
      $User=M("t_order");
	      /*两个表的关联查询得到等级值*/
		  $where = array();
		 $where['meiyepin_feedback.member_id'] = "1";
		 $Model = M('feedback');
		   $a = $Model
		   ->join('meiyepin_member ON meiyepin_feedback.member_id = meiyepin_member.member_id')
		   ->where($where)
		   ->select();
		 var_dump($a);exit;
		}


}
