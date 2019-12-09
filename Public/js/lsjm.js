
//

$(document).ready(function(){
    console.log(2123)
    $("#tab td").click(function() {

        var column_num = parseInt( $(this).index() ) + 1;
        var row_num = parseInt( $(this).parent().index() )+1;

        console.log( "Row_num =" + row_num + "  ,  Rolumn_num ="+ column_num );
    });
    var tab = document.getElementById('tab');
    console.log(tab.rows[0].cells[0].innerHTML)


    $.ajax({
        type:'POST',
        url:'student_list',
        dataType:'json',
        data:{},
        success:function(data){
            console.log(data)
        }
    })



});

// var t1 = document.getElementById("t1");
// a.addEventListener('click', function(){
// 	preventDefault();
// 	a.innerHTML = "aa";
// }, false);
	// alert(a[0].innerHTML);
// var count = 0;
// window.onload =function a1(){
// 		for(var i=0;i<a.length;i++){
// 					// console.log(5512);
// 			if(a[i].innerHTML == '未签到'){
// 				a[i].onclick = function(e){
// 					e.preventDefault();
// 					this.innerHTML = '已签到';
// 					// count++;
// 					// console.log(count);
// 					a1()
// 					this.parentNode.style.backgroundColor = '#33db81';
// 				}
//
// 			}else{
// 					a[i].onclick = function(e){
// 						e.preventDefault();
// 						this.innerHTML = '未签到';
// 						// count++;
// 						// console.log(count);
// 						// console.log(a[i]);
// 						this.parentNode.style.backgroundColor = 'red';
// 						a1();
// 					}
// 			}
//
//
// 		}
// 	}
//

// window.onclick = function a2(){
// 	for(var i = 0 ; i < tab.rows.length;i++){
// 		for(var j = 0;j<tab.rows[i].cells.length;j++){
// 			tab.rows[i].cells[j].onclick = a3;
// 		}
// 	}
// }
// function a3(){

// 	for(var i = 0 ; i < tab.rows.length;i++){
// 		for(var j = 0;j<tab.rows[i].cells.length;j++){
// 			tab.rows[i].cells[j].style.backgroundColor = 'red';
// 		}
// 	}
// }
// function a(){
// ...
// var flag = false;
// 	for(){if () {... ; flag = true; break ;} }
// if (flag) {a(); return;}
// ...
// }
// for(var i = 0;i<a.length;i++){
// 	a[i].onclick = function(e){
// 		e.preventDefault();
// 		this.innerHTML = "test";
// 	}
// }
