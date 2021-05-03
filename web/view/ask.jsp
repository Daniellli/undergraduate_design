<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/20
  Time: 22:06
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
<head>
    <meta charset="utf-8">
    <title>我要提问</title>
    <link rel="stylesheet" type="text/css" href="css/base.css">
    <link rel="stylesheet" type="text/css" href="css/ask.css">
    <script type="text/javascript" src="js/jquery-1.10.1.js"></script>
    <script type="text/javascript" src="js/base.js"></script>
    <script type="text/javascript" src="js/ask.js"></script>
</head>
<body>
<!-- 内容 -->
<div id="container">
    <%@include file="header.jsp" %>
    <main>
        <form method="post">
            <table class="asktable">
                <tr class="asktable_tr">
                    <td class="asktable_tit"><p>*问题说明：</p></td>
                    <td>
                        <textarea id="prob_field" class="asktable_text" required placeholder="请在这里概述您的问题"></textarea>
                    </td>
                </tr>
                <tr class="asktable_tr">
                    <td class="asktable_tit"><p>提问服务：</p></td>
                    <td>
                        <input class="asktable_choice" type="checkbox" name="dtxs">
                        <span class="asktable_word"> 答题悬赏</span>
                        <div class="asktable-getscore">
                            <img src="images/jifen.png">
                            <span class="asktable_usescore">10</span>
                            <img class="asktable_img" src="images/xiala.png">
                        </div>
                        <ul class="asktable_ul hidden">
                            <li class="asktable_li">
                                <img src="images/jifen.png"> <span>10</span>
                            </li>
                            <li class="asktable_li">
                                <img src="images/jifen.png"> <span>20</span>
                            </li>
                            <li class="asktable_li">
                                <img src="images/jifen.png"> <span>50</span>
                            </li>
                            <li class="asktable_li">
                                <img src="images/jifen.png"> <span>100</span>
                            </li>
                            <li class="asktable_li">
                                <img src="images/jifen.png"> <span>200</span>
                            </li>
                        </ul>
                        <span class="asktable_nowscore">您当前的积分为100<span>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <button class="asktable_sub" onclick="add_problem()">提交问题</button>
                        <input class="asktable_choice asktable_nmchoice" type="checkbox" name="nmhd">
                        <span class="asktable_word asktable_nmword"> 匿名回答</span>
                        <div class="asktable-takescore hidden">
                            <span class="asktable-takescore_xh">消耗</span>
                            <img src="images/jifen.png">
                            <span class="asktable-takescore_jf">10</span>
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </main>

    <%@include file="footer.jsp" %>
</div>
</body>

<script>
    function add_problem() {
        var value = document.getElementById("prob_field").value;
        alert(value);
        $.ajax({
            type: 'get',
            url: '${root_path}Servlet_add_problem?p_content=' + value,
            datatype: 'json',
            success: function (data) {
                if (data != null) {
                    //data 返回的true 是字符串！！！
                    alert("insert successfully!!");
                }
            }
        });

    }
</script>
</html>