
//

$(document).ready(function(){
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


            $("#tab td").click(function() {
              console.log(data.data[0].classtime_id)
              console.log(this.innerHTML)
              var name = this.innerHTML;
              // console.log('dasdadsa'+grade)
              var classtime_id = data.data[0].classtime_id;

              var dd = document.getElementById('gradebtn').onclick = function (grade,comment){
                 var grade = document.getElementsByName('grade')[0].value;
                 var comment = document.getElementsByName('comment')[0].value;
                 console.log(comment);
                 console.log(grade);
                 return grade;
                 return comment;
               }
               console.log(dd());
              $.ajax({
                type:'POST',
                url:'update_attendance_grade',
                dataType:'json',
                data:{
                  "name":name,
                  'classtime_id':classtime_id,
                  'grade':grade,
                  // 'comment':comment
                },
                success:function(d){
                  console.log(d)

                  }


              })
              $('#d1').css('display','block')
            });

            $('#d1>p>span').click(function(){
              $('#d1').css('display','none')
            })

        }
    })




  //
  // $("#tab td").click(function() {
  //   console.log(this.innerHTML)
  //   var name = this.innerHTML;
  //   $.ajax({
  //     type:'POST',
  //     url:'update_attendance_grade',
  //     dataType:'json',
  //     data:{"name":name},
  //     success:function(d){
  //       console.log(d)
  //       var classtime_id = 30;
  //       data = {'classtime_id':classtime_id};
  //       $.post("__URL__/update_attendance_grade",data,function (msg) {
  //          console.log(msg)
  //       },'json')
  //
  //     }
  //   })
  //   $('#d1').css('display','block')
  // });
  // $('#d1>p>span').click(function(){
  //   $('#d1').css('display','none')
  // })








});
