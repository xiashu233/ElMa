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
<jsp:include page="header.jsp"></jsp:include>

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

            <%--  jsp方式显示数据（从数据库查询显示）  --%>
            <%
                for (int i = 1; i < 9; i++) {
            %>
            <a href='#'>
                <div class='section_merchantItem container'>
                    <div>
                        <img src='<%= path %>/images/MerchantStatue/zhoudao.jpeg'>
                    </div>
                    <div>
                        <p class='merchantTitle'>店铺名</p>
                        <p>
                            <span></span>
                        </p>
                        <p class='merchantPSPrice'>
                            <span>配送费￥</span>
                            <span></span>
                        </p>
                    </div>
                </div>
            </a>
            <%
                }
            %>

                <%--   js方式显示数据   --%>
                <%--<script type="text/javascript">--%>
                <%--for (var i = 1; i < 10; i++) {--%>
                <%--   document.write("<a href='#'><div class='section_merchantItem container'><div><img src='<%= path %>/images/MerchantStatue/zhoudao.jpeg'></img></div><div><p class='merchantTitle'>店铺名</p><p><span></span></p><p class='merchantPSPrice'>配送费￥<span></span></p></div></div></a>")--%>

                <%--}--%>
                <%--</script>--%>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
