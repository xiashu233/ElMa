<%@ page import="entity.Business" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <meta charset="utf-8">
    <title>菜品详情</title>
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/goble.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/fonts/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/merchantInfo.css" />

</head>
<body>
<% Business business = (Business) request.getAttribute("business"); %>
    <jsp:include page="UserHomeHeader.jsp"></jsp:include>



    <section id="section">
        <div class="section_conten">
            <div class="merchantInfo_title container">
                <div class="merchantInfo_title_left container">
                    <div class="merchantInfo_title_imgBox">
                        <img class="merchantInfo_title_img" src="<%= basePath %><%= business.getBnsImagePath() %>">
                    </div>
                    <div class="merchantInfo_title_Name">
                        <span><%= business.getBnsName() %></span>
                    </div>
                </div>

                <div class="merchantInfo_title_right container">
                    <div class="merchantInfo_title_right_Item">
                        <p>起送费</p>
                        <p><%= business.getBnsStartPrice() %>元</p>
                    </div>
                    <div class="merchantInfo_title_right_Item">
                        <p>配送费</p>
                        <p><%= business.getBnsDeliveryPrice() %>元</p>
                    </div>
                    <a href="#">
                        <div id="Favorite" class="">
                            <div class="show">
                                <p><span class="iconfont icon-xiangkan"></span></p>
                                <p><span>收藏</span></p>
                            </div>

                            <div class="hideen">
                                <p><span class="iconfont icon-yixiangkan"></span></p>
                                <p><span>取消收藏</span></p>
                            </div>

                        </div>
                    </a>
                </div>
            </div>

        </div>

        <div class="section_seach container">
            <div class="">
                <p>所有商品</p>
            </div>
            <div class="Allmerchant">
                <form action="" method="">
                    <input type="text" id="" value="" style="font-size: 18px;" placeholder="搜索商家，美食..." />
                    <input type="image" width="20px" height="20px" src="../images/search.png" />
                </form>
            </div>
        </div>


        <div class="section_conten container">
            <div class="section_conten_left">
                <ul class="sectionLeft_List">
                    <script>
                        for (var i = 0; i < 10; i++) {
                            document.write("<li><a href='#'>热销 ·</a></li>")
                        }
                    </script>
                    <!-- <li><a href="#">热销 ·</a></li>
                    <li><a href="#">热销 ·</a></li>
                    <li><a href="#">热销 ·</a></li>
                    <li><a href="#">热销 ·</a></li> -->
                </ul>
            </div>
            <div class="section_conten_center">
                <div class="section_conten_Top container">
                    <span class="on">热销</span>
                </div>

                <div class="">
                    <div class="">
                        <p>XXX</p>
                        <div class="container FoodItems">
                            <div class="FoodItem">
                                <div class="FoodItem_imgBox">
                                    <img src="<%= path %>/images/huitouke/2a26e19a59eb9d9d61af45bfd8926jpeg.jpeg" >
                                </div>
                                <div class="FoodItem_texts">
                                    <h3>菜品名称</h3>
                                    <p>主要原料：xxx</p>
                                    <p class="FoodPrice">￥0.0</p>
                                </div>
                                <a href="#">
										<span class="AddItem">
											加入购物车
										</span>
                                </a>
                            </div>
                            <div class="FoodItem">
                                <div class="FoodItem_imgBox">
                                    <img src="<%= path %>/images/huitouke/2a138f014ac43fc4e2f023996f026jpeg.jpeg" >
                                </div>
                                <div class="FoodItem_texts">
                                    <h3>菜品名称</h3>
                                    <p>主要原料：xxx</p>
                                    <p class="FoodPrice">￥0.0</p>
                                </div>
                                <a href="#">
										<span class="AddItem">
											加入购物车
										</span>
                                </a>
                            </div>
                            <div class="FoodItem">
                                <div class="FoodItem_imgBox">
                                    <img src="<%= path %>/images/huitouke/2a138f014ac43fc4e2f023996f026jpeg.jpeg" >
                                </div>
                                <div class="FoodItem_texts">
                                    <h3>菜品名称</h3>
                                    <p>主要原料：xxx</p>
                                    <p class="FoodPrice">￥0.0</p>
                                </div>
                                <a href="#">
										<span class="AddItem">
											加入购物车
										</span>
                                </a>
                            </div>
                            <div class="FoodItem">
                                <div class="FoodItem_imgBox">
                                    <img src="<%= path %>/images/huitouke/2a138f014ac43fc4e2f023996f026jpeg.jpeg" >
                                </div>
                                <div class="FoodItem_texts">
                                    <h3>菜品名称</h3>
                                    <p>主要原料：xxx</p>
                                    <p class="FoodPrice">￥0.0</p>
                                </div>
                                <a href="#">
										<span class="AddItem">
											加入购物车
										</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="">
                <div class="section_conten_right">
                    <div class="section_conten_shangjiagonggao">
                        <p class="gonggao_title">商家公告</p>
                        <div class="gonggao_conten">
                            <p>
                                <%= business.getBnsAnnouncement() %>
                            </p>
                        </div>
                    </div>

                    <div class="section_conten_peisong">
                        <h4>配送说明</h4>
                        <p>配送费：￥<%= business.getBnsDeliveryPrice() %></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
<script src="<%= path %>/js/merchantInfo.js" type="text/javascript" charset="utf-8"></script>