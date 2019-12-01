$(document).ready(function(){
    $("#yzm").click(function(){
        var phone = $("#userPhone").val();
        var ret = /^[\d]{11}$/;
        if (ret.test(phone)){
            alert("手机号合法，可以进行Ajax请求");
            $.load(

            )


        }else{
            alert("手机号不合法");
        }
        // alert(phone);
        // $("#yzm").hide();

    });
});