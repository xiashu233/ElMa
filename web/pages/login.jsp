<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8"%>

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
    <script src="<%= path %>/js/my_jquery_functions.js"></script>
</head>
<body>
<%--  主体  --%>
<header id="header">

</header>

<%--  主体  --%>
<section id="section">
    <%--  存放回调验证码以及绑定手机号  --%>
    <input type="hidden" id="hdyzm" value="">
    <input type="hidden" id="hdphone" value="">
    <div>
        <form action="LoginServlet" onsubmit="return checkBeforeSubmit()" method="post">
            <div class="section_gnq">
                <div class="section_logoBox">
                    <img class="section_logo" src="<%= path %>/images/L.png" >
                </div>
                <div class="section_btnBox">
                    <input class="section_btn" type="text" name="usPhone" id="userPhone" placeholder="请输入手机号"/>
                </div>
                <div class="section_btnBox section_yzmDingWei">
                    <input class="section_btn" type="text" name="usYZM" id="userYZM" placeholder="请输入验证码" />
                    <div class="section_getYzm">
                        <a class="section_getYzm_a" href="#" id="yzm"  >
                            <p id="section_getYzm_hq">获取验证码</p>
                            <p id="section_getYzm_dd" style="display: none"><span id="section_getYzm_dddjs">60</span><span>s后获取</span></p>
                        </a>
                    </div>
                </div>
                <button class="section_submit" type="submit">登录</button>
                <p class="section_TS">未注册手机号登录后将自动生成账户，且代表您已同意</p>
                <p><a class="section_TS_a" href="#">《用户服务协议》</a>、<a class="section_TS_a" href="#">《隐私权政策》</a></p>
            </div>
        </form>
    </div>
</section>
<%--  页脚  --%>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
