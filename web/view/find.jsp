<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/20
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<c:set var="base_path" scope="page"
       value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/view/"/>
<c:set var="root_path" scope="page"
       value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>找回密码</title>
    <link rel="icon" href="${base_path}images/favicon.ico"/>
    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }

        a {
            text-decoration: none;
        }

        #container {
            width: 1080px;
            margin: 0px auto;
        }

        #container header {
            float: left;
            width: 100%;
            margin-top: 10px;
        }

        header #logo {
            float: left;
            width: 100px;
            height: 100px;
        }

        header h1 {
            float: left;
            margin: 35px 15px 0px 10px;
            color: #9A2424;
            font-family: 'STXingkai', 'FZShuTi', 'STXinwei';
        }

        header span {
            float: left;
            font-size: 20px;
            margin-top: 15px;
            padding: 20px 15px;
            border-left: 1px solid black;
        }

        #container main {
            float: left;
            width: 100%;
            height: 480px;
            margin-top: 10px;
            border-top: 1px solid #9A2424;
        }

        main .cbox {
            width: 600px;
            margin: 50px auto;
        }

        main .cbox tr {
            height: 41px;
        }

        main .cbox .ct {
            width: 200px;
            color: white;
            text-align: center;
        }

        main .cbox .ct1_1 {
            background: url("${base_path}images/t1_1.png") no-repeat;
        }

        main .cbox .ct2_1 {
            background: url("${base_path}images/t2_1.png") no-repeat;
        }

        main .cbox .ct3_1 {
            background: url("${base_path}images/t3_1.png") no-repeat;
        }

        main .cbox .ct1_2 {
            background: url("${base_path}images/t1_2.png") no-repeat;
        }

        main .cbox .ct2_2 {
            background: url("${base_path}images/t2_2.png") no-repeat;
        }

        main .cbox .ct3_2 {
            background: url("${base_path}images/t3_2.png") no-repeat;
        }

        main .cbox .ctit {
            float: right;
            margin: 30px 30px 0px 0px;
        }

        main .cbox img {
            float: right;
            padding-top: 23px;
            margin-right: 165px;
        }

        main .cbox input {
            width: 250px;
            height: 30px;
            margin-top: 25px;
        }

        main .cbox .ci {
            width: 150px;
        }

        main .cbox .cbtn {
            width: 90px;
            height: 34px;
            border: 1px solid #9A2424;
            margin-left: 10px;
            background: white;
            cursor: pointer;
        }

        main .cbox .csub {
            color: white;
            border: none;
            border-radius: 5px;
            margin: 40px 0px 0px 250px;
            background: #9A2424;
        }

        main .cbox .cbtnt {
            background: #BD0B0B;
        }

        #container footer {
            float: left;
            width: 100%;
            height: 50px;
            margin-top: 10px;
            padding-left: 30px;
        }

        footer hr {
            height: 2px;
            border: none;
            background-color: #9A2424;
        }

        footer p {
            text-align: center;
            margin-top: 10px;
        }
    </style>
    <script type="text/javascript" src="${base_path}js/jquery-1.10.1.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".csub").bind("mouseover click", function () {
                $(this).addClass("cbtnt");
            }).mouseout(function () {
                $(this).removeClass("cbtnt");
            });
        });
    </script>
</head>
<body>
<div id="container">
    <header>
        <a href="">
            <img id="logo" src="${base_path}images/logo.jpg">
            <h1>厦理工E起来</h1>
        </a>
        <span>找回密码${find_res.name}</span>
    </header>
    <main>
        <div class="cbox">
            <form action="${root_path}Servlet_get_user_by_uid" method="get">
                <table>
                    <tr>
                        <td class="ct ct1_1">1.确认账号</td>
                        <td class="ct ct2_2">2.安全验证</td>
                        <td class="ct ct3_2">3.重置密码</td>
                    </tr>
                    <tr>
                        <td class="ctit">学号</td>
                        <td colspan="2">
                            <input type="text" name="u_id">
                        </td>
                    </tr>
                    <%--                    <tr>--%>
                    <%--                        <td class="ctit">验证码</td>--%>
                    <%--                        <td colspan="2">--%>
                    <%--                            <input class="ci" type="text" name="yzm"><img src="images/yzm.png">--%>
                    <%--                        </td>--%>
                    <%--                    </tr>--%>
                    <tr>
                        <td colspan="3">
                            <button class="cbtn csub" onclick="jump()">下一步</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </main>
    <footer>
        <hr>
        <p>版权所有：Daniel</p>
    </footer>
</div>
</body>


<script>
    function jump() {
        document.forms[0].submit();
    }


</script>
</html>