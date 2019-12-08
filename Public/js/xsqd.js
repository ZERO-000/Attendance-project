//
// var btn = document.getElementsByTagName('button')[0];
// btn.onclick = function(){
//     var pInnerhtml = document.getElementsByTagName('p')[0].innerHTML;
//     $.ajax({
//         type:"POST",
//         url:"Judge",
//         data:{
//             'sname':pInnerhtml
//         },
//         dataType:'json',
//         success:function(data){
//             console.log(data);
//             // console.log(hours);
//             var amHour1 = data.classStrattime.amHour1;
//             var amMinute1 = data.classStrattime.amMinute1;
//             var pmHour1 = data.classStrattime.pmHour1;
//             var pmMinute1 = data.classStrattime.pmMinute1;
//             var pmHour2 = data.classStrattime.pmHour2;
//             var pmMinute2 = data.classStrattime.pmMinute2;
//             var lesson = data.data[0].lesson;
//             var student_id = data.data[0].student_id;
//             var classtime_id = data.data[0].classtime_id;
//
//             //console.log(amHour1);
//             console.log(lesson);
//             if (lesson == 1) {
//                 if (amHour1 <= 0 && amMinute1 <= 0) {
//                     var kaoqin = 1;
//                     var data = {
//                         'kaoqin':kaoqin,
//                         'student_id':student_id,
//                         'classtime_id':classtime_id
//                     };
//                     $.post("__URL__/kaoqin",data,function (msg) {
//                        console.log(msg)
//                     },'json')
//                     console.log('签到成功')
//                 } else {
//                     console.log('签到失败' + "..." + '你以迟到' + amHour1 + "小时" + amMinute1 + "分钟")
//                 var	kaoqin = 2;
//                     var data = {
//                         'kaoqin':kaoqin,
//                         'student_id':student_id,
//                         'classtime_id':classtime_id
//                     };
//                     $.post("__URL__/kaoqin",data,function (msg) {
//                        console.log(msg)
//                     },'json')
//                 }
//             }
//
//             if (lesson == 3) {
//                 if (amHour2 <= 0 && amMinute2 <= 0) {
//                 var	kaoqin = 1;
//                     var data = {
//                         'kaoqin':kaoqin,
//                         'student_id':student_id,
//                         'classtime_id':classtime_id
//                     };
//                     $.post("__URL__/kaoqin",data,function (msg) {
//                        console.log(msg)
//                     },'json')
//                     console.log('签到成功')
//                 } else {
//                     console.log('签到失败' + "..." + '你以迟到' + amHour2 + "小时" + amMinute2 + "分钟")
//                 var	kaoqin = 2;
//                     var data = {
//                         'kaoqin':kaoqin,
//                         'student_id':student_id,
//                         'classtime_id':classtime_id
//                     };
//                     $.post("__URL__/kaoqin",data,function (msg) {
//                        console.log(msg)
//                     },'json')
//                 }
//             }
//
//             if (lesson == 5) {
//                 if (pmHour1 <= 0 && pmMinute1 <= 0) {
//                 var	kaoqin = 1;
//                     var data = {
//                         'kaoqin':kaoqin,
//                         'student_id':student_id,
//                         'classtime_id':classtime_id
//                     };
//                     $.post("__URL__/kaoqin",data,function (msg) {
//                        console.log(msg)
//                     },'json')
//                     console.log('签到成功')
//                 } else {
//                     console.log('签到失败' + "..." + '你以迟到' + pmHour1 + "小时" + pmMinute1 + "分钟")
//                 var	kaoqin = 2;
//                     var data = {
//                         'kaoqin':kaoqin,
//                         'student_id':student_id,
//                         'classtime_id':classtime_id
//                     };
//                     $.post("__URL__/kaoqin",data,function (msg) {
//                        console.log(msg)
//                     },'json')
//                 }
//             }
//
//             if (lesson == 7) {
//                 if (pmHour2 <= 0 && pmMinute2 <= 0) {
//                      var kaoqin = 1;
//                      var data = {
//                          'kaoqin':kaoqin,
//                          'student_id':student_id,
//                          'classtime_id':classtime_id
//                      };
//                      $.post("__URL__/kaoqin",data,function (msg) {
//                         console.log(msg)
//                      },'json')
//                     console.log('签到成功')
//                 } else {
//                     console.log('签到失败' + "..." + '你以迟到' + pmHour2 + "小时" + pmMinute2 + "分钟")
//                     var kaoqin = 2;
//                      var data = {
//                          'kaoqin':kaoqin,
//                          'student_id':student_id,
//                          'classtime_id':classtime_id
//                      };
//                      $.post("__URL__/kaoqin",data,function (msg) {
//                         console.log(msg)
//                      },'json')
//                 }
//             }
//
//         }
//
//     })
// }
