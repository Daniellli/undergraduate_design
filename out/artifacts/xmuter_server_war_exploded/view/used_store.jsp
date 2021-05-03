<%--
  Created by IntelliJ IDEA.
  User: DixinFan
  Date: 2021/4/28
  Time: 15:59
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
                <button><a href="${base_path}post_used.jsp" target="_self">我要发布</a></button>
            </div>
            <div class="lbottom">
                <ul>
                    <li><h3>问题分类</h3></li>
                    <li><a href="#"><span class="cs cst">推荐</span></a></li>
                    <li><a href="#"><span>数码世界</span></a></li>
                    <li><a href="#"><span>生活用品</span></a></li>
                    <li><a href="#"><span>服饰母婴</span></a></li>
                    <li><a href="#"><span>运动图书</span></a></li>
                    <li><a href="#"><span>设备办公</span></a></li>
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
                <ul style="font-size: 15px;">
                    <li class="cli"><a href="#"><span class="cs">推荐</span></a></li>
                    <li><a href="#"><span>我的</span></a></li>
                    <li><a href="#"><span>生活用品</span></a></li>
                    <li><a href="#"><span>服饰母婴</span></a></li>
                    <li><a href="#"><span>运动图书</span></a></li>
                    <li><a href="#"><span>设备办公</span></a></li>
                </ul>
            </div>
            <div class="con">
                <div class="cbox cbox0">
                    <table style="margin: auto;">
                        <c:forEach items="${sessionScope.useds}" var="used">
                            <tr style="margin-top:30px ">
                                <td>
                                    <div class="single_list" style="width: 100%;display: block;">
                                        <div class="thumb">
                                            <img src="${base_path}images/c3.jpg"/>
                                            <p>${used.author_name}</p>
                                        </div>
                                        <div class="detail">
                                            <center><h2>${used.used_name}</h2></center>
                                            <img src="${used.img_address}" width="300px" height="300px">
                                            <p style="width: 600px;">
                                                    ${used.used_desc}
                                            </p>
                                            <h4><img src="${base_path}images/money.png" alt="money" width="20px"
                                                     height="20px"> ${used.price}
                                                &nbsp; &nbsp; &nbsp; &nbsp;
                                                <span> <img src="${base_path}images/date.png" alt="date" width="20px"
                                                            height="20px"> ${used.used_date}</span>&nbsp; &nbsp; &nbsp;
                                                &nbsp;&nbsp; &nbsp;
                                                &nbsp;
                                                <img src="${base_path}images/tele.png" alt="tele" width="20px"
                                                     height="20px"> ${used.telephone}</h4>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <div class="cbox cbox1">
                    <table style="margin: auto;">
                        <c:forEach items="${sessionScope.useds}" var="used">
                            <c:if test="${used.author_no eq sessionScope.user.uno}">
                                <tr style="margin-top:30px ">
                                    <td>
                                        <div class="single_list" style="width: 100%;display: block;">
                                            <div class="thumb">
                                                <img src="${base_path}images/c3.jpg"/>
                                                <p>${used.author_name}</p>
                                            </div>
                                            <div class="detail">
                                                <center><h2>${used.used_name}</h2></center>
                                                <img src="${used.img_address}" width="300px" height="300px">
                                                <p style="width: 600px;">
                                                        ${used.used_desc}
                                                </p>
                                                <h4><img src="${base_path}images/money.png" alt="money" width="20px"
                                                         height="20px"> ${used.price}
                                                    &nbsp; &nbsp; &nbsp; &nbsp;
                                                    <span> <img src="${base_path}images/date.png" alt="date"
                                                                width="20px"
                                                                height="20px"> ${used.used_date}</span>&nbsp; &nbsp;
                                                    &nbsp;
                                                    &nbsp;&nbsp; &nbsp;
                                                    &nbsp;
                                                    <img src="${base_path}images/tele.png" alt="tele" width="20px"
                                                         height="20px"> ${used.telephone}
                                                    <button style="width:50px; height: 20px; margin-left: 100px"
                                                            onclick="delete_used(${used.used_no},this)">delete
                                                    </button>
                                                </h4>

                                            </div>

                                        </div>

                                    </td>


                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                </div>
                <div class="cbox cbox2">
                    生活用品
                </div>
                <div class="cbox cbox3">
                    服饰母婴
                </div>
                <div class="cbox cbox4">
                    运动图书
                </div>
                <div class="cbox cbox5">
                    设备办公
                </div>
            </div>
        </div>
    </main>
</div>
</body>

<script>
    function delete_used(used_no, obj) {
        $.ajax({
            type: "post",
            url: " ${root_path}Servlet_delete_used",
            data: {'used_no': used_no,},
            datatype: 'json',
            success: function (data) {
                if (data != null) {
                    //data 为新增的答案，暂时用不上   alert(data);
                    alert("delete successfully!");
                    obj.parentNode.parentNode.parentNode.parentNode.parentNode.innerHTML = "";
                }
            }
        });
    }
</script>
</html>

