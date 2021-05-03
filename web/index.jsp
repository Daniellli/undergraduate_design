<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/19
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<c:set var="base_path" scope="page" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/view/"/>
<c:set var="root_path" scope="page" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户登录</title>
    <link rel="icon" href="${base_path}images/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="${base_path}css/login.css">
    <script type="text/javascript" src="${base_path}js/jquery-1.10.1.js"></script>
    <script type="text/javascript" src="${base_path}js/login.js"></script>
</head>
<body>
<div id="container">
    <header>
        <a href="">
            <img id="logo" src="${base_path}images/logo.jpg">
            <h1>厦理工E起来</h1>
        </a>
        <span>用户登录</span>
    </header>
    <main>
        <div id="login_box">
            <div class="con">
                <form action="${root_path}Servlet_login" method="post">
                    <h3>用户登录</h3>
                    <input class="ctxt ctxt1" type="text" name="u_id" placeholder="学/工号"><br>
                    <input class="ctxt ctxt2" type="password" name="pwd" placeholder="密码"><br>
                    <input class="cbtn" type="submit" name="login" value="登录">
                    <p class="cp"><a href="${base_path}find.jsp" target="_self">忘记密码</a></p>
                    <p class="cp cp1"><a href="${base_path}register.jsp" target="_self">免费注册</a></p>
                </form>
            </div>
        </div>
    </main>
    <footer>
        <hr>
        <p>版权所有：Daniel</p>
    </footer>
</div>
</body>
</html>
