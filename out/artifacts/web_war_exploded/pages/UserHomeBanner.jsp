<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>

<link rel="stylesheet" type="text/css" href="<%= path %>/css/UserHomeBanner.css"/>

<div id="container" class="section_Banner">
    <div id="list" style="left: 0px;" >
        <img src="<%= path %>/images/bannerImages/bannerImage1.jpg" alt="1" />
        <img src="<%= path %>/images/bannerImages/bannerImage2.jpg" alt="2" />
        <img src="<%= path %>/images/bannerImages/bannerImage3.jpg" alt="3" />
    </div>
    <div id="buttons">
        <span index="1" class="on"></span>
        <span index="2"></span>
        <span index="3"></span>
    </div>
    <a href="javascript:;" id="prev" class="arrow">&lt;</a>
    <a href="javascript:;" id="next" class="arrow">&gt;</a>
</div>
