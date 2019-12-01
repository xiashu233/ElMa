$(document).ready(function(){
    $("#yzm").click(function(){
        var $phone = $("#userPhone").val();
        var ret = /^[\d]{11}$/;
        if (ret.test($phone)){
            alert("手机号合法，可以进行Ajax请求");
            $.ajax({
                // url:服务器地址,
                // 请求方式: get|post,
                // data:请求数据,
                // success:function () {
                //
                // },
                // error:function () {
                //
                // }
                url:"MobileServlet",
                type:"post",
                data:"mobile="+$phone,
                success:function (result) {
                    if (result == "1234"){
                        alert("验证码为：" + result);
                    }else{
                        alert("发生了不可描述的错误");
                    }
                },
                error:function () {
                    alert("系统异常!");
                }
            });


        }else{
            alert("手机号不合法");
        }
        // alert(phone);
        // $("#yzm").hide();

    });
});

// function register()
// {
//     var $phone = $("#userPhone").val();
//         var ret = /^[\d]{11}$/;
//         if (ret.test($phone)){
//             $.post(
//                 "/MobileServlet",
//                 "mobile="+$phone,
//                 function (result){
//                     if(result == "1234"){
//                         alert("验证码正确");
//                     }else{
//                         alert("注册成功！");
//                     }
//                 },
//                 "text"
//             );
//         }else{
//             alert("手机号不合法");
//         };
//
// }