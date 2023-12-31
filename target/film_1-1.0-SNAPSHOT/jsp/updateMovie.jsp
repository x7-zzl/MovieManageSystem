<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>电影后台管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>

</head>

<body>
<div class="x-body">
    <form class="layui-form" action="${pageContext.request.contextPath}/updateMovie" method="post">
        <input type="hidden" name="id" value="${id}">

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                电影名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="name" placeholder="${movie.name}"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                电影类别
            </label>
            <div class="layui-input-inline">
                <select name="type">
                    <option value="">类别</option>
                    <c:forEach items="${sessionScope.movieTypeList}" var="movieType">
                        <option value="${movieType.type}">${movieType.type}</option>
                    </c:forEach>
                </select>
                <br>
            </div>
        </div>

        <div class="layui-form-item layui-form-text">
            <label for="desc" class="layui-form-label">
                主演
            </label>
            <div class="layui-input-inline">
                <input type="text" id="desc" name="synopsis" placeholder="${movie.synopsis}"
                       class="layui-input">
            </div>

        </div>

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                封面链接
            </label>
            <div class="layui-input-inline">
                <input type="text" id="img" name="img" value="${movie.img}"
                       class="layui-input" size="40">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                影片链接
            </label>
            <div class="layui-input-inline">
                <input type="text" id="video" name="video" value="${movie.video}"
                       class="layui-input">
            </div>

        </div>

        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" type="submit">修改</button>
        </div>


    </form>
</div>
</body>

</html>