<%@ page import="java.util.List" %>
<%@ page import="entity.Business" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
%>

<link rel="stylesheet" type="text/css" href="<%= path %>/fonts/iconfont.css" />
<%
    List<Business> businesses = (List<Business>) request.getAttribute("businesses");
%>
<section id="section">
    <div id="Sidebar" class="Sidebar container">
        <div id="Sidebar_left" class="Sidebar_left cell_1">
            <div class="Sidebar_topSpace"></div>
            <a href="#" onclick="changeItem(0)">
                <p class="Sidebar_leftText">
                    <span class="iconfont icon-dingdan iconStyle"></span>
                </p>
            </a>
            <hr >
            <a href="#" onclick="changeItem(1)">
                <p class="Sidebar_leftText">
                    <span class="iconfont icon-gouwuche iconStyle"></span>
                </p>
                <p>购</p>
                <p>物</p>
                <p>车</p>
            </a>
            <hr >
            <a href="#" onclick="changeItem(2)">
                <p class="Sidebar_leftText">
                    <span class="iconfont icon-xinxi iconStyle"></span>
                </p>
            </a>
        </div>
        <div id="Sidebar_InfoID" class="cell_6 Sidebar_Info">
            <div >
                订单信息
            </div>
            <div >
                购物车信息
            </div>
            <div >
                系统消息
            </div>
        </div>
    </div>
    <div class="section_conten">
        
        <jsp:include page="UserHomeBanner.jsp"></jsp:include>

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
                    <input type="image" src="../images/search.png" class="section_SearchBtn" />
                </form>
            </div>

        </div>
        <div class="section_waimaiBox">
            <a href="#"><img src="../images/waimai.png" ></a>
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
                for (int i = 0; i < businesses.size(); i++) {
                    Business bnsItem = businesses.get(i);
            %>
            <a href='<%= path %>/FoodInfoServlet?bnsPhone=<%= bnsItem.getBnsPhone() %>&usPhone=${requestScope.usPhone}'>
                <div class='section_merchantItem container'>
                    <div>
                        <img src='<%= path + bnsItem.getBnsImagePath() %>'>
                    </div>
                    <div>
                        <p class='merchantTitle'><%= bnsItem.getBnsName() %></p>
                        <p>
                            <span></span>
                        </p>
                        <p class='merchantPSPrice'>
                            <span>配送费￥</span>
                            <span><%= bnsItem.getBnsDeliveryPrice() %></span>
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