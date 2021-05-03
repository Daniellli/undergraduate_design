<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/28
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="base_path" scope="page"
       value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/view/"/>
<c:set var="root_path" scope="page"
       value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>



<!DOCTYPE html>
<html>
<meta charset="utf-8">
<title>校园地图</title>
<link rel="icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/layout6.css" />
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=wDYEcxgRRheZwyC9jpN1Tt7fzr2zjosZ"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/style6.js"></script>
</head>
<body>
<!-- 内容 -->
<div id="container">
    <%@include file="header.jsp" %>
    <!-- 校园地图 -->
    <main>
        <div id="map">
            <div id="allmap"></div>
        </div>
    </main>
    <!-- 尾部 -->
    <footer>
        <hr>
        <p>版权所有：XXX</p>
    </footer>
</div>
</body>
</html>