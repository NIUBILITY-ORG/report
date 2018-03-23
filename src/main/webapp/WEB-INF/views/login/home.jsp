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
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <span><img alt="image" class="img-circle" src="${root}/static/img/imgs/profile_small.jpg" /></span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">${sessionScope.activeUser.username}</strong></span>
                                <span class="text-muted text-xs block">
                                    <c:if test="${sessionScope.activeUser.role == 'admin'}">
                                        超级管理员
                                    </c:if>
                                    <c:if test="${sessionScope.activeUser.role == 'user'}">
                                        普通用户
                                    </c:if>
                                    <b class="caret"></b></span>
                                </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a class="J_menuItem" href="####">测试</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="####">安全退出</a>
                            </li>
                        </ul>
                    </div>
                    <div class="logo-element">WZ
                    </div>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-home"></i>
                        <span class="nav-label">主页</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="">第一页</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="">第二页</a>
                        </li>
                    </ul>

                </li>
                <li>
                    <a class="J_menuItem" href=""><i class="fa fa-columns"></i> <span class="nav-label">布局</span></a>
                </li>
            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                </div>
            </nav>
        </div>
        <div class="row content-tabs">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="v1">首页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
            </button>
            <div class="btn-group roll-nav roll-right">
                <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                </button>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabShowActive"><a>定位当前选项卡</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                    </li>
                    <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                    </li>
                </ul>
            </div>
            <a href="login.html" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="${root}/home" frameborder="0" data-id="v1" seamless></iframe>
        </div>
        <div class="footer">
            <div class="pull-right"><a href="####">LL</a>
            </div>
        </div>
    </div>
    <!--右侧部分结束-->
    <!--右侧边栏开始-->
    <div id="right-sidebar">
        <div class="sidebar-container">
        </div>
    </div>
    <!--右侧边栏结束-->
</div>
<script src="${root}/static/js/jquery.min.js?v=2.1.4"></script>
<script src="${root}/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="${root}/static/js/metisMenu/jquery.metisMenu.js"></script>
<script src="${root}/static/js/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${root}/static/js/layer/layer.min.js"></script>
<script src="${root}/static/js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="${root}/static/js/contabs.min.js"></script>
<script src="${root}/static/js/pace/pace.min.js"></script>
<!–[if lt IE 9]>
<script src="${root}/static/js/css3-mediaqueries.js"></script>
<script src="${root}/static/js/html5shiv.min.js"></script>


<![endif]–>
</body>
</html>

