<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>手机号登录</title>

    <link href="<%= path %>/css/login.css" rel="stylesheet" type="text/css" />
    <link href="<%= path %>/css/layout.css" rel="stylesheet" type="text/css" />
    <link href="<%= path %>/css/goble.css" rel="stylesheet" type="text/css" />

    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
    <script src="<%= path %>/script/my_jquery_functions.js"></script>
</head>
<body>
<%--  主体  --%>
<header id="header">

</header>

<%--  主体  --%>
<section id="section">
    <div>

        <form action="" method="post">
            <div class="section_gnq">
                <div class="section_logoBox">
                    <img class="section_logo" src="<%= path %>/images/L.png" >
                </div>
                <div class="section_btnBox">
                    <input class="section_btn" type="text" name="" id="userPhone" placeholder="请输入手机号"/>
                </div>
                <div class="section_btnBox section_yzmDingWei">
                    <input class="section_btn" type="text" name="" id="userYZM" placeholder="请输入验证码" />
                    <div class="section_getYzm">
                        <a class="section_getYzm_a" href="#" id="yzm" >获取验证码</a>
                    </div>
                </div>
                <button class="section_submit" type="submit">登录</button>
                <p class="section_TS">未注册手机号登录后将自动生成账户，且代表您已同意</p>
                <p><a class="section_TS_a" href="#">《用户服务协议》</a>、<a class="section_TS_a" href="#">《隐私权政策》</a></p>
            </div>
        </form>
    </div>
</section>
<%--  主体  --%>
<footer id="footer">
    <div class="footer_texts">
        <p class="footer_text1">所有方：六安莫德甘青信息科技有限公司</p>
        <p class="footer_text2" >增值电信业务许可证 :沪B2-20150033沪ICP备 09007032上海工商行政管理Copyright ©2008-2019 ele.me, All Rights Reserved.</p>
        <img src="<%= path %>/images/wangBei.png" >
    </div>
</footer>
</body>
</html>
