<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/28
  Time: 15:47
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
<title>生活助手</title>
<link rel="icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/layout3.css" />
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/style3.js"></script>
</head>
<body>
<!-- 主体 -->
<div id="container">
    <!-- 头部 -->
    <%@include file="header.jsp" %>
    <!-- 生活助手 -->
    <main>
        <div class="content">
            <div class="cbox cbox1">
                校园招聘
            </div>
            <div class="cbox cbox2">
                我的课表
                <button>导入课表</button>
            </div>
            <div class="cbox cbox3">
                场地开放时间
            </div>
            <div class="cbox cbox4">
                自习/考研教室分布
            </div>
            <div class="cbox cbox5">
                驾校考试
            </div>
            <div class="cbox cbox6">
                旅游推荐
            </div>
            <div class="cbox cbox7">
                <div class="tit">
                    <ul>
                        <li class="cli"><a href="#"><span>饭卡充值/挂失</span></a></li>
                        <li><a href="#"><span>电费充缴</span></a></li>
                        <li><a href="#"><span>水电供应</span></a></li>
                    </ul>
                </div>
                <div class="con">
                    <div class="cbox2 cbox2_0">
                        饭卡充值/挂失
                    </div>
                    <div class="cbox2 cbox2_1">
                        电费充缴
                    </div>
                    <div class="cbox2 cbox2_2">
                        水电供应
                    </div>
                </div>
            </div>
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