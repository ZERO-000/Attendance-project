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
	      $userinfo = $User->table('t_order,t_commodity,t_user')->where('t_order.cname = t_commod
	      	ity.cname and t_order.uname = t_user.uname ')->field('t_order_id,t_order.orderid,t_order.cname')->select();
	      $this->assign("userInfo",$userinfo);
	      $this->display("order-list");
		}


}