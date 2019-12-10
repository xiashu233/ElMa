<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/goble.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/css/layout.css" />
    <link rel="stylesheet" type="text/css" href="<%= path %>/fonts/iconfont.css" />
</head>
<body>
    <jsp:include page="UserHomeHeader.jsp"></jsp:include>
</body>
</html>
