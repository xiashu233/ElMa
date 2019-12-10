$(document).ready(function(){
    $("#yzm").click(function(){
        if(document.getElementById("section_getYzm_hq").style.display == "none"){
            // alert("mn");
            return;
        }

        var $phone = $("#userPhone").val();
        var ret = /^[\d]{11}$/;


        if (ret.test($phone)){
            // alert("手机号合法，可以进行Ajax请求");
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
                    // alert(result);
                    $("#hdyzm").val(result);

                    $("#hdphone").val($phone);
                    var chs = $("#hdphone").val();
                    // alert(chs);
                    // 此时代表 发送验证码成功 可以做一些其他操作 比如 进行计时发送下次验证码
                    djs = setInterval("Countdown()",1000);
                    document.getElementById("section_getYzm_dddjs").innerText = 60;

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

function checkBeforeSubmit() {
    var $userYZM = $("#userYZM").val();
    var $userPhone = $("#userPhone").val();
    var $hdphone = $("#hdphone").val();
    var $hdzym = $("#hdyzm").val();
    // alert($hdphone);
    if ($userYZM == $hdzym && $userPhone == $hdphone){

        return true;
    }else{
        alert("登录失败，请检查是否临时更改了手机号或验证码输入错误！");
        return false;
    }
};

function Countdown() {

    document.getElementById("section_getYzm_hq").style.display="none";
    document.getElementById("section_getYzm_dd").style.display="block";
    var second = document.getElementById("section_getYzm_dddjs").innerText;
    second--;
    document.getElementById("section_getYzm_dddjs").innerText = second;
    if (second <= 0){
        document.getElementById("section_getYzm_dd").style.display="none";
        document.getElementById("section_getYzm_hq").style.display="block";
        clearInterval("djs");
        return;
    }
    // $("#section_getYzm_hq").style.display="none";
    // $("#section_getYzm_dd").style.display="inlineBlock";
}
