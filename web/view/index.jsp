<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/20
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="base_path"
       value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/view/"
       scope="page"/>
<c:set var="root_path"
       value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"
       scope="page"/>

<!DOCTYPE html>
<html>
<meta charset="utf-8">
<title>厦理工E起来</title>
<link rel="icon" href="${base_path}images/favicon.ico"/>
<meta name="keywords" content="厦理工E起来">
<meta name="description" contect="厦门理工学院的信息收集及显示">
<meta name="author" content="Leo">
<meta name="robots" content="all">
<meta name="copyright" Content="本页版权归Daniel所有。All Rights Reserved">
<meta http-equiv="widow-target" Content="_top">
<link rel="stylesheet" href="${base_path}css/base.css"/>
<link rel="stylesheet" href="${base_path}css/layout.css"/>
<script type="text/javascript" src="${base_path}js/jquery-1.10.1.js"></script>
<script type="text/javascript" src="${base_path}js/base.js"></script>
<script type="text/javascript" src="${base_path}js/style.js"></script>


</head>
<body>
<!-- 内容 -->
<div id="container">
    <%@include file="header.jsp" %>
    <!-- 首页 -->
    <main>
        <img src="${base_path}images/1_1.png">
        <p>这里是一段关于该网站的功能及学校的描述...</p>
    </main>
    <%@include file="footer.jsp" %>
</div>
</body>
</html>