
//

$(document).ready(function(){
    $("#tab td").click(function() {

        var column_num = parseInt( $(this).index() ) + 1;
        var row_num = parseInt( $(this).parent().index() )+1;

        console.log( "Row_num =" + row_num + "  ,  Rolumn_num ="+ column_num );
    });


    console.log(tab.rows[0].cells[0].innerHTML);
    var que = document.getElementById('que');

    $.ajax({
        type:'POST',
        url:'student_list',
        dataType:'json',
        data:{},
        success:function(data){
            console.log(data);
            var data1 = data.data;
            var data2 = data.data1;
            // var sss = data1.length;
            console.log(data2)
            for (var i = 0; i < data1.length; i++) {
                // console.log(i);
                var row = (data1[i].row)-1
                var col = (data1[i].col)-1
                var name = data1[i].s_name
                var kaoqin = data1[i].kaoqin
                tab.rows[row].cells[col].innerHTML = name
                if (kaoqin == 1) {
                    tab.rows[row].cells[col].style.backgroundColor = '#8dda53';
                }
                if (kaoqin == 2) {
                    tab.rows[row].cells[col].style.backgroundColor = '#e26161';
                }
                // console.log(data[i]);
                // console.log(row);
                // console.log(col);
            }

            for (var i = 0; i < data2.length; i++) {
                console.log(i)
                var kaoqin = data2[i].kaoqin;
                var name = data2[i].s_name
                if (kaoqin == 0) {
                    console.log(11) 
                    que.innerHTML +='&nbsp;&nbsp;' + name + '&nbsp;&nbsp;';
                }
            }
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
