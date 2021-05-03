<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/21
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- 头部 -->
<header>
    <!-- logo名称 -->
    <div class="left">
        <a href="#"><img id="logo" src="${base_path}images/logo.jpg"></a>
        <a href="${base_path}index.jsp"><h1>厦理工E起来</h1></a>
    </div>
    <!-- 搜索框 -->
    <div class="mid">
        <ul>
            <li><a class="ca ca1" href="#" target="_self">模块一</a></li>
            <li><a class="ca" href="#" target="_self">模块二</a></li>
        </ul>
        <input id="txtSearch" type="search" name="search" placeholder="搜模块一">
        <a href="#">
            <button id="btnSearch" class="cbtn">搜索</button>
        </a>
    </div>
    <!-- 登录注册 -->
    <div class="right">
        <ul class="cu1">
            <c:choose>
                <c:when test="${not empty sessionScope.user}">

                    <li class="cli1 clit"><a href="${base_path}myLetter.html" target="_blank">私信</a></li>
                    <li class="cli1 clit"><a href="${base_path}myMessage.html" target="_blank">信息</a></li>
                    <li class="cli1 clit">
                        <a class="nickname" href="#" target="_blank">${sessionScope.user.name}</a>
                        <ul class="cu2">
                            <li><a class="cnick" href="${base_path}myIndex.html" target="_blank">我的主页</a></li>
                            <li><a class="cnick" href="${root_path}Servlet_logout" target="_self">退出账号</a></li>
                        </ul>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="cli1 clih"><a href="${root_path}Servlet_get_problem" target="_self">注册</a></li>
                    <li class="cli1 clih"><a href="${root_path}index.jsp" target="_self">登录</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</header>
<!-- 导航 -->
<nav>
    <ul>
        <li><a href="${base_path}index.jsp" target="_self">首页</a></li>
        <li><a href="${base_path}campusHot.jsp" target="_self">校园通知</a></li>
        <li><a href="${base_path}lifeHelper.jsp" target="_self">生活助手</a></li>
        <li><a class="ca" href="${root_path}Servlet_get_problem" target="_self">校园答疑</a></li>
        <li><a href="${base_path}employsResearch.jsp" target="_self">兼职信息</a></li>
        <%--        <li><a href="${base_path}campusMap.jsp" target="_self">校园地图</a></li>--%>
        <li><a href="${root_path}Servlet_get_all_used" target="_self">二手交易</a></li>
    </ul>
</nav>