<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>附近美食 - 六职外卖</title>
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/goble.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/UserHome.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/fonts/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/merchantInfo.css"/>
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/login.css"/>
</head>
<body>

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
						<span>
							123
						</span>
                <a href="# " class="header_user_a">
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

<section id="section">
    <div class="section_conten">
        <div class="section_MapAndSearch container">
            <div class="section_Map cell_1">
                <span>当前位置：</span>
                <a href="#"><span>六安职业技术学院</span></a>
                <a href="#"><span class="SwitchAddress">[切换地址]</span></a>
            </div>
            <div class="cell_3"></div>
            <div class="section_Search cell_1">
                <form action="" method="get">
                    <input type="text" id="" value="" class="section_SearchTxt" />
                    <input type="image" src="<%= path %>/images/search.png" class="section_SearchBtn" />
                </form>
            </div>

        </div>
        <div class="section_waimaiBox">
            <a href="#"><img src="<%= path %>/images/waimai.png" ></a>
        </div>
        <div class="section_merchant container">
            <span class="section_merchantNavTitle cell_1">商家分类：</span>
            <ul class="cell_5 container section_merchantNav">
                <li class="section_merchanfocus"><a href="#">全部商家</a></li>
                <li><a href="#">美食</a></li>
                <li><a href="#">快餐便当</a></li>
                <li><a href="#">特色菜系</a></li>
                <li><a href="#">全球美食</a></li>
                <li><a href="#">小吃夜宵</a></li>
                <li><a href="#">甜品饮品</a></li>
                <li><a href="#">早餐</a></li>
                <li><a href="#">中餐</a></li>
                <li><a href="#">下午茶</a></li>
                <li><a href="#">晚餐</a></li>
                <li><a href="#">夜宵</a></li>
            </ul>
            <span class="cell_2"></span>
        </div>
        <div class="container section_merchantOrFood">

            <script type="text/javascript">
                for (var i = 1; i < 10; i++) {
                    document.write("<a href='#'><div class='section_merchantItem container'><div><img src='<%= path %>/images/MerchantStatue/zhoudao.jpeg'></img></div><div><p class='merchantTitle'>店铺名</p><p><span></span></p><p class='merchantPSPrice'>配送费￥<span></span></p></div></div></a>")

                }
            </script>
        </div>
    </div>
</section>

<footer id="footer">
    <div class="footer_texts">
        <p class="footer_text1">所有方：六安莫德甘青信息科技有限公司</p>
        <p class="footer_text2" >增值电信业务许可证 :沪B2-20150033沪ICP备 09007032上海工商行政管理Copyright ©2008-2019 ele.me, All Rights Reserved.</p>
        <img src="../images/wangBei.png" >
    </div>
</footer>
</body>
</html>
