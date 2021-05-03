<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/28
  Time: 16:10
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
<title>个人中心</title>
<link rel="icon" href="images/favicon.ico"/>
<meta name="keywords" content="湖师百晓生">
<link rel="stylesheet" href="css/base.css"/>
<link rel="stylesheet" type="text/css" href="css/myIndex.css">
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/myIndex.js"></script>
</head>
<body>
<!-- 内容 -->
<div id="container">
    <%@include file="header.jsp" %>
    <!-- 个人主页 -->
    <main>
        <div class="con">
            <p><span>基本信息</span></p>
            <form action="${root_path}Servlet_post_used" method="post" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td class="ct">商品图片：</td>
                        <td>
                            <a href="" class="file">上传
                                <input type="file" id="file_input" class="ci" name="image_file">
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td class="ct"></td>
                        <td>
                            <img src="images/tx.jpg" class="img"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="ct">物品名称：</td>
                        <td>
                            <input class="ci" type="text" name="used_name">
                        </td>
                    </tr>
                    <tr>
                        <td class="ct">描述信息：</td>
                        <td>
                            <input class="ci" type="text" name="used_desc">
                        </td>
                    </tr>
                    <tr>
                        <td class="ct">价格：</td>
                        <td>
                            <input class="ci" type="number" name="price">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input class="ci cbtn csub" type="submit" name="sub" value="发布">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </main>
    <!-- 尾部 -->
    <%@include file="footer.jsp" %>
</div>
</body>
</html>