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
    <form class="layui-form" method="post" action="${pageContext.request.contextPath}/addNews">
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                新闻类别
            </label>

            <div class="layui-input-inline">
                <select name="type">
                    <option value="">类别</option>
                    <c:forEach items="${newTypeList}" var="newType">
                        <option value="${newType.type}">${newType.type}</option>
                    </c:forEach>
                </select>
            </div>

        </div>
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
               标题
            </label>
            <div class="layui-input-inline">
                <input type="text" id="username" name="name" required lay-verify="required"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label for="desc" class="layui-form-label">
                描述
            </label>
            <div class="layui-input-block">
                <textarea placeholder="请输入内容" id="desc" name="content" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
            </label>
            <button class="layui-btn" lay-submit="" type="submit">
                添加
            </button>
        </div>
    </form>
</div>

</body>

</html>