<%--
  Created by IntelliJ IDEA.
  User: lz
  Date: 2018/3/22
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="HandheldFriendly" content="true">
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <link href="${root}/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="${root}/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="${root}/static/css/animate.min.css" rel="stylesheet">
    <link href="${root}/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>
<body>
<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">I</h1>

        </div>
        <h3>欢迎使用</h3>

        <form class="m-t" role="form" action="${root}/login/in" method="post">
            <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="用户名" required="">
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="密码" required="">
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>
            <p class="text-muted text-center"><small>忘记密码请联系超级管理员找回！！！</small></p>
        </form>
    </div>
</div>
<script src="${root}/static/js/jquery.min.js?v=2.1.4"></script>
<script src="${root}/static/js/bootstrap.min.js?v=3.3.6"></script>
<!–[if lt IE 9]>
<script src="${root}/static/js/css3-mediaqueries.js"></script>
<script src="${root}/static/js/html5shiv.min.js"></script>
<![endif]–>
</body>
</html>

