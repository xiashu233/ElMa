<%@ page import="entity.Business" %>
<%@ page import="java.util.List" %>
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
    <link rel="stylesheet" type="text/css" href="<%= path %>/fonts/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/UserHome_merchantInfo.css"/>
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/login.css"/>

</head>
<body>
<%
    List<Business> businesses = (List<Business>) request.getAttribute("businesses");
%>
<jsp:include page="UserHomeHeader.jsp"></jsp:include>

<jsp:include page="UserHomeSection.jsp"></jsp:include>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<script src="<%= path %>/js/Sidebar.js" type="text/javascript" charset="utf-8"></script>
<script src="<%= path %>/js/banner.js" type="text/javascript" charset="utf-8"></script>