<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/28
  Time: 15:46
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
<title>考研考证</title>
<link rel="icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/layout5.css" />
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/style5.js"></script>
</head>
<body>
<!-- 内容 -->
<div id="container">
    <!-- 头部 -->
    <%@include file="header.jsp" %>
    <!-- 考研考证 -->
    <main>
        <div class="content">
            <section class="top">
                <div class="left">
                    <a class="cat" href="#"><img src="images/5_1_1.png"></a>
                    <a href="#" target="_blank"><span class="cs">More</span></a>
                    <ul>
                        <li><a href="#" target="_blank" title="考研快讯一考研快讯一考研快讯一">考研快讯一考研快讯一考研快讯一</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考研快讯二考研快讯二考研快讯二">考研快讯二考研快讯二考研快讯二</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考研快讯三考研快讯三考研快讯三">考研快讯三考研快讯三考研快讯三</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考研快讯四考研快讯四考研快讯四">考研快讯四考研快讯四考研快讯四</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考研快讯五考研快讯五考研快讯五">考研快讯五考研快讯五考研快讯五</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考研快讯六考研快讯六考研快讯六">考研快讯六考研快讯六考研快讯六</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考研快讯七考研快讯七考研快讯七">考研快讯七考研快讯七考研快讯七</a><span>2017-5-20</span></li>
                    </ul>
                </div>
                <div class="right">
                    <a class="cat" href="#"><img src="images/5_2_1.png"></a>
                    <a href="#" target="_blank"><span class="cs">More</span></a>
                    <ul>
                        <li><a href="#" target="_blank" title="考证快讯一考证快讯一考证快讯一">考证快讯一考证快讯一考证快讯一</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考证快讯二考证快讯二考证快讯二">考证快讯二考证快讯二考证快讯二</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考证快讯三考证快讯三考证快讯三">考证快讯三考证快讯三考证快讯三</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考证快讯四考证快讯四考证快讯四">考证快讯四考证快讯四考证快讯四</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考证快讯五考证快讯五考证快讯五">考证快讯五考证快讯五考证快讯五</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考证快讯六考证快讯六考证快讯六">考证快讯六考证快讯六考证快讯六</a><span>2017-5-20</span></li>
                        <li><a href="#" target="_blank" title="考证快讯七考证快讯七考证快讯七">考证快讯七考证快讯七考证快讯七</a><span>2017-5-20</span></li>
                    </ul>
                </div>
            </section>
            <section class="bottom">
                <a class="cat" href="#"><img src="images/5_3_1.png"></a>
                <a href="#" target="_blank"><span class="cs">More</span></a>
                <ul>
                    <li><a href="#" target="_blank" title="国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一">国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一国家单位一</a><span>2017-5-20</span></li>
                    <li><a href="#" target="_blank" title="国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二">国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二国家单位二</a><span>2017-5-20</span></li>
                    <li><a href="#" target="_blank" title="国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三">国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三国家单位三</a><span>2017-5-20</span></li>
                    <li><a href="#" target="_blank" title="国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四">国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四国家单位四</a><span>2017-5-20</span></li>
                    <li><a href="#" target="_blank" title="国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五">国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五国家单位五</a><span>2017-5-20</span></li>
                </ul>
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