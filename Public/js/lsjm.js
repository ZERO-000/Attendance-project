
//

$(document).ready(function(){
    $("#tab td").click(function() {
        console.log(this.innerHTML)
        $('.d1').css('display','block')

        // divs.style.display="block";
        // divx.onclick = function(){
        // divs.style.display="none";}
        // var column_num = parseInt( $(this).index() ) + 1;
        // var row_num = parseInt( $(this).parent().index() )+1;
        //
        // console.log( "Row_num =" + row_num + "  ,  Rolumn_num ="+ column_num );
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
                console.log("this"+this.name);
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




    function show(){


    	var divs = document.getElementsByName("dv")
    	var divx = document.getElementsByName("sad")

      divs[i].style.display="block";
      divx.onclick = function(){
        divs[i].style.display="none";
      }
    }






});
