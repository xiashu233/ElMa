<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
%>

<link rel="stylesheet" type="text/css" href="<%= path %>/css/UserHome.css" />


<header id="header">

    <div class="header_content container">
        <div class="header_logobox">
            <img class="header_logo" src="../images/logoSuo.png">
        </div>
        <ul class="container header_nav">
            <li>
                <a href="#" class="header_navItem">
                    <span class="iconfont icon-shouye"></span>
                    首页
                </a>
            </li>
            <li>
                <a href="#" class="header_navItem">
                    <span class="iconfont icon-dingdan"></span>
                    我的订单
                </a>
            </li>
            <li>
                <a href="#" class="header_navItem">
                    <span class="iconfont icon-jiamengshang"></span>
                    加盟合作
                </a>
            </li>
            <li>
                <a href="http://wpa.qq.com/msgrd?v=3&uin=2453893123&site=qq&menu=yes" class="header_navItem">
                    <span class="iconfont icon-kefu"></span>
                    我的客服
                </a>
            </li>
        </ul>
        <div class="header_userInfo">
            <p class="header_userInfotext">
						<span id="usPhone">
                            ${requestScope.usPhone}
						</span>
                <a href="#" class="header_user_a">
                    <span class="iconfont icon-yonghu"></span>
                </a>
            </p>
            <div class="header_userMenu">
                <ul>
                    <li><a href="#">个人中心</a></li>
                    <li><a href="#">我的收藏</a></li>
                    <li><a href="#">我的地址</a></li>
                    <li><a href="#">退出登录</a></li>
                </ul>
            </div>
            <p class="asd">123</p>
        </div>
    </div>
</header>
