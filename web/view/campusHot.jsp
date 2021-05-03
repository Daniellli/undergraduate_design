<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/28
  Time: 15:43
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
    <title>校园热点</title>
    <link rel="icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/layout2.css" />
    <script type="text/javascript" src="js/jquery-1.10.1.js"></script>
    <script type="text/javascript" src="js/base.js"></script>
    <script type="text/javascript" src="js/style2.js"></script>
</head>
<body>
<!-- 内容 -->
<div id="container">



    <%@include file="header.jsp" %>

    <!-- 校园热点 -->
    <main>
        <!-- 幻灯片 -->
        <div class="slideBox">
            <div id="imgBox">
                <a href="#"><img src="images/2_0_0.jpg"><p>这是热点一的标题</p></a>
            </div>
            <div id="selBox">
                <ul>
                    <li class="cli cli1"><a href="#">热点一</a></li>
                    <li><a href="#">热点二</a></li>
                    <li><a href="#">热点三</a></li>
                    <li><a href="#">热点四</a></li>
                    <li class="cli2"><a href="#">热点五</a></li>
                </ul>
            </div>
        </div>
        <!-- 公告栏 -->
        <div class="content">
            <section>
                <!-- 校园新闻公告栏 -->
                <div class="left top">
                    <a class="cat" href="#"><img src="images/2_1_1.png"></a>
                    <a href="#" target="_blank"><span class="cs">More</span></a>
                    <ul>
                        <li><a href="#" target="_blank" title="校园新闻一校园新闻一校园新闻一">校园新闻一校园新闻一校园新闻一</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园新闻二校园新闻二校园新闻二">校园新闻二校园新闻二校园新闻二</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园新闻三校园新闻三校园新闻三">校园新闻三校园新闻三校园新闻三</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园新闻四校园新闻四校园新闻四">校园新闻四校园新闻四校园新闻四</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园新闻五校园新闻五校园新闻五">校园新闻五校园新闻五校园新闻五</a><span>2017-5-20</span></li>
                    </ul>
                </div>
                <!-- 中间插图 -->
                <div class="mid">
                    <img src="images/2_6.jpg">
                </div>
                <!-- 校园通知公告栏 -->
                <div class="right top">
                    <a class="cat" href="#"><img src="images/2_2_1.png"></a>
                    <a href="#" target="_blank"><span class="cs">More</span></a>
                    <ul>
                        <li><a href="#" target="_blank" title="校园通知一校园通知一校园通知一">校园通知一校园通知一校园通知一</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园通知二校园通知二校园通知二">校园通知二校园通知二校园通知二</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园通知三校园通知三校园通知三">校园通知三校园通知三校园通知三</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园通知四校园通知四校园通知四">校园通知四校园通知四校园通知四</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园通知五校园通知五校园通知五">校园通知五校园通知五校园通知五</a><span>2017-5-20</span></li>
                    </ul>
                </div>
            </section>
            <section>
                <!-- 校园活动公告栏 -->
                <div class="left bottom">
                    <a class="cat" href="#"><img src="images/2_3_1.png"></a>
                    <a href="#" target="_blank"><span class="cs">More</span></a>
                    <ul>
                        <li><a href="#" target="_blank" title="校园活动一校园活动一校园活动一校园活动一校园活动一校园活动一">校园活动一校园活动一校园活动一校园活动一校园活动一校园活动一</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园活动二校园活动二校园活动二校园活动二校园活动二校园活动二">校园活动二校园活动二校园活动二校园活动二校园活动二校园活动二</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园活动三校园活动三校园活动三校园活动三校园活动三校园活动三">校园活动三校园活动三校园活动三校园活动三校园活动三校园活动三</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园活动四校园活动四校园活动四校园活动四校园活动四校园活动四">校园活动四校园活动四校园活动四校园活动四校园活动四校园活动四</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="校园活动五校园活动五校园活动五">校园活动五校园活动五校园活动五校园活动五校园活动五校园活动五</a><span>2017-5-20</span></li>
                    </ul>
                </div>
                <!-- 学术活动公告栏 -->
                <div class="right bottom">
                    <a class="cat" href="#"><img src="images/2_4_1.png"></a>
                    <a href="#" target="_blank"><span class="cs">More</span></a>
                    <ul>
                        <li><a href="#" target="_blank" title="学术活动一学术活动一学术活动一学术活动一学术活动一学术活动一">学术活动一学术活动一学术活动一学术活动一学术活动一学术活动一</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="学术活动二学术活动二学术活动二学术活动二学术活动二学术活动二">学术活动二学术活动二学术活动二学术活动二学术活动二学术活动二</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="学术活动三学术活动三学术活动三学术活动三学术活动三学术活动三">学术活动三学术活动三学术活动三学术活动三学术活动三学术活动三</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="学术活动四学术活动四学术活动四学术活动四学术活动四学术活动四">学术活动四学术活动四学术活动四学术活动四学术活动四学术活动四</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="学术活动五学术活动五学术活动五学术活动五学术活动五学术活动五">学术活动五学术活动五学术活动五学术活动五学术活动五学术活动五</a><span>2017-5-20</span></li>
                    </ul>
                </div>
            </section>
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