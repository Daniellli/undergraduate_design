<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/21
  Time: 13:05
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
    <title>校园答疑</title>
    <link rel="icon" href="${base_path}images/favicon.ico"/>
    <link rel="stylesheet" href="${base_path}css/base.css"/>
    <link rel="stylesheet" href="${base_path}css/layout4.css"/>
    <link rel="stylesheet" href="${base_path}css/problem_list.css"/>

    <script type="text/javascript" src="${base_path}js/jquery-1.10.1.js"></script>
    <script type="text/javascript" src="${base_path}js/base.js"></script>
    <script type="text/javascript" src="${base_path}js/style4.js"></script>
</head>
<body>
<!-- 内容 -->
<div id="container">
    <%@include file="header.jsp" %>
    <!-- 校园问答 -->
    <main>
        <!-- 个人信息及问题分类 -->
        <div id="left">
            <div class="ltop">
                <a href="${base_path}myIndex.html" target="_blank"><img src="${base_path}images/tx.jpg"></a>
                <p>积分:0</p>
                <button><a href="${base_path}ask.jsp" target="_self">我要提问</a></button>
            </div>
            <div class="lbottom">
                <ul>
                    <li><h3>问题分类</h3></li>
                    <li><a href="#"><span class="cs cst">推荐</span></a></li>
                    <li><a href="#"><span>经济金融</span></a></li>
                    <li><a href="#"><span>企业管理</span></a></li>
                    <li><a href="#"><span>法律法规</span></a></li>
                    <li><a href="#"><span>社会民生</span></a></li>
                    <li><a href="#"><span>科学教育</span></a></li>
                    <li><a href="#"><span>健康生活</span></a></li>
                    <li><a href="#"><span>体育运动</span></a></li>
                    <li><a href="#"><span>文化艺术</span></a></li>
                    <li><a href="#"><span>电子数码</span></a></li>
                    <li><a href="#"><span>电脑网络</span></a></li>
                    <li><a href="#"><span>娱乐休闲</span></a></li>
                    <li><a href="#"><span>心理分析</span></a></li>
                    <li><a href="#"><span>医疗卫生</span></a></li>
                    <li><a href="#"><span class="cst">地区</span></a></li>
                </ul>
            </div>
        </div>
        <!-- 问答选项卡 -->
        <div id="middle">
            <div class="tit">
                <ul>
                    <li class="cli"><a href="#"><span class="cs">待解决</span></a></li>
                    <li><a href="#"><span>高悬赏</span></a></li>
                    <li><a href="#"><span>热门问题</span></a></li>
                    <li><a href="#"><span>已解决</span></a></li>
                    <li><a href="#"><span>我的提问</span></a></li>
                    <li><a href="#"><span>我的回答</span></a></li>
                </ul>
            </div>
            <div class="con">
                <div class="cbox cbox0">
                    <table id="need_append">
                        <%--                       显示问题的全部内容--%>
                        <tr>
                            <td>
                                <div class="single_list" style="width: 100%;display: block;">
                                    <div class="thumb">
                                        <img src="${base_path}images/c3.jpg"/>
                                        <p>${sessionScope.problem.author_name}</p>
                                    </div>
                                    <div class="detail">
                                        <h2><a href="#">${sessionScope.problem.p_content}</a></h2>
                                        <p>
                                            <!-- 答疑数 -->
                                            <img height="20" width="20" src="${base_path}images/x1.jpg"/>

                                            <a href="#" aria-hidden="true"
                                               onclick="get_answer(${sessionScope.problem.pno} ,this)">${sessionScope.problem.ans_num}</a>条回答
                                            &nbsp;&nbsp;&nbsp;<span> ${sessionScope.problem.p_date}</span>
                                        </p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <c:forEach items="${sessionScope.answers}" var="ans">
                            <tr>
                                <td>
                                    <div class="single_list" style="width: 100%;display: block;">
                                        <div class="thumb">
                                            <img src="${base_path}images/tx.jpg" width="40px" height="40px"/>
                                            <p>${ans.author_name}</p>
                                        </div>
                                        <div class="detail">
                                            <h4>${ans.a_content}</h4>
                                            &nbsp;<h5>${ans.a_date}</h5>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>

                    </table>
                </div>
                <div class="cbox cbox1">
                    高悬赏
                </div>
                <div class="cbox cbox2">
                    热门问题
                </div>
                <div class="cbox cbox3">
                    已解决
                </div>
                <div class="cbox cbox4">
                    我的提问
                </div>
                <div class="cbox cbox5">
                    我的回答
                </div>
            </div>
        </div>
        <!-- 站内公告和排行榜 -->
        <div id="right">
            <div class="rtop">
                <h3>站内公告</h3>
                <div class="cnotice">
                    欢迎使用本网站，请文明使用。
                </div>
            </div>
            <div class="rbottom">
                <h3>积分排行</h3>
                <div class="crank">
                    <dl>
                        <dt><span class="cs">1</span><a href="#" target="_blank">花的不得了</a><span class="cs2">90</span>
                        </dt>
                        <dt><span class="cs">2</span><a href="#" target="_blank">我是土豪</a><span class="cs2">80</span>
                        </dt>
                        <dt><span class="cs">3</span><a href="#" target="_blank">你好吗？</a><span class="cs2">70</span>
                        </dt>
                        <dt><span>4</span><a href="#" target="_blank">helloworld</a><span class="cs2">60</span></dt>
                        <dt><span>5</span><a href="#" target="_blank">Happy</a><span class="cs2">50</span></dt>
                        <dt><span>6</span><a href="#" target="_blank">fanfanfan</a><span class="cs2">40</span></dt>
                        <dt><span>7</span><a href="#" target="_blank">hahaha</a><span class="cs2">30</span></dt>
                        <dt><span>8</span><a href="#" target="_blank">香菇</a><span class="cs2">20</span></dt>
                        <dt><span>9</span><a href="#" target="_blank">蓝瘦</a><span class="cs2">10</span></dt>
                    </dl>
                </div>
            </div>
        </div>
    </main>
    <%@include file="footer.jsp" %>
</div>
</body>

<script>
    function get_answer(pno, obj) {
        var answer = prompt("请输入答案");//如果什么都没输入，就是null
        if (answer.length != 0) {//是答案，插入答案
            $.ajax({
                type: "post",
                url: "${root_path}Servlet_add_answer",
                data: {
                    'pno': pno,
                    'answer': answer
                },
                datatype: 'json',
                success: function (data) {
                    if (data != null) {
                        var obj = JSON.parse(data);
                        $(
                            ' <tr>' +
                            '<td>' +
                            '<div class="single_list" style="width: 100%;display: block;">' +
                            '<div class="thumb">' +
                            '<img src="${base_path}images/tx.jpg" width="40px" height="40px"/>' +
                            '<p>' + obj.author_name + '</p>' +
                            '</div>' +
                            '<div class="detail">' +
                            '<h4>' + obj.a_content + '</h4>' +
                            '&nbsp;<h5>' + obj.a_date + '</h5>' +
                            '</div>' +
                            '</div>' +
                            '</td>' +
                            '</tr>').appendTo($('#need_append'));
                    }
                }

            });
            obj.innerHTML = parseInt(obj.innerHTML) + 1;
        }
    }
</script>
</html>
