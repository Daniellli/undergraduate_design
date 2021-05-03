<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/19
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<c:set var="base_path" scope="page"
       value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/view/"/>
<c:set var="root_path" scope="page"
       value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>

<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <title>用户注册</title>
    <link rel="icon" href="${base_path}images/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="${base_path}css/register.css">
    <script type="text/javascript" src="${base_path}js/jquery-1.10.1.js"></script>
    <script type="text/javascript" src="${base_path}js/register.js"></script>
</head>
<body>
<div id="container">
    <header>
        <a href="#">
            <img id="logo" src="${base_path}images/logo.jpg">
            <h1>厦理工E起来</h1>
        </a>
        <span>用户注册</span>
    </header>
    <main>
        <div id="register_box">
            <div class="con">
                <form id="reg_form" action="${root_path}/Servlet_register" method="post">
                    <h3>用户注册</h3>
                    <input class="ctxt" type="text" name="u_id" placeholder="学/工号"><br>
                    <input class="ctxt" type="password" name="pwd" placeholder="密码"><br>
                    <input class="ctxt" type="password" name="pwd_comfirm" placeholder="确认密码"><br>
                    <input class="ctxt" type="text" name="name" placeholder="姓名"><br>
                    <input class="ctxt cyzm" type="text" name="secure_question" placeholder="密保问题">
                    <input class="ctxt cyzm" type="text" name="secure_answer" placeholder="密保答案">
                    <%--                    <button class="cbtn cbtn1">发送验证码</button><br>--%>
                    <input class="cbtn cbtn2" type="button" name="register" value="立即注册" onclick="check()">
                    <p class="cp"><a href="${root_path}/index.jsp" target="_self">登录</a></p>
                    <p class="cp">已有账号?</p>
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

<script>
    function check() {
        var f = document.forms["reg_form"];

        var u_id = f.elements["u_id"].value;
        var pwd = f.elements["pwd"].value;
        var pwd_comfirm = f.elements["pwd_comfirm"].value;
        var name = f.elements["name"].value;
        var secure_question = f.elements["secure_question"].value;
        var secure_answer = f.elements["secure_answer"].value;
        if (u_id.length == 0 || pwd.length == 0 || name.length == 0 || secure_question.length == 0 || secure_answer.length == 0) {
            alert("can not be empty!!!");
        } else if (pwd != pwd_comfirm) {
            alert("password inputed two times respectly is different ");
        } else {
            f.submit();
        }


    }

</script>

</html>