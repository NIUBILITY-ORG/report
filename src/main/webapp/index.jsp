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
    <link rel="stylesheet" type="text/css" href="${root}/static/custom/index.css">
    <style>
        .tb>table tr:hover{
            background:#0B2A46;
        }
    </style>
</head>
<body>
<div class="wrap">
    <div class="wid_1820">

        <div class="header">
            <p><span>用户名<a onclick="login();" href="####">[登录]</a></span></p>
        </div>
        <!--
        <h3 class="title">实时监测-企业名单</h3>
        -->
        <div class="content">
            <img class="guang" src="${root}/static/img/title.png"/>
            <div class="tb tb_left">
                <h3 ondblclick="editEL(this);">今日分时进展馆客流</h3>
                <table class="table1">
                    <tr class="tb_title"><td>企业名称</td><td>盈利对利息覆盖能力</td><td>流动性还本付能力</td><td>清偿性还本付息能力</td></tr>
                    <tr><td>鲁泰纺织股份有限公司</td><td>5.61</td><td>5.76</td><td>1.87<td></tr>
                    <tr><td>浙江森马服饰股份有限公司</td><td>5.54</td><td>5.78</td><td>2.60<td></tr>
                    <tr><td>仙宜岱股份有限公司</td><td>5.29</td><td>5.17</td><td>1.99<td></tr>
                </table>
            </div>
            <div class="tb tb_middle">
                <div class="tb_middle_inLeft">
                    <h2>今日意向客流</h2>
                    <p>123456</p>
                </div>
                <div class="tb_middle_inRight ">
                    <h2>当前日期</h2>
                    <span class="theDateStr">日期</span>
                </div>
                <div class="tb_middle_inLeft">
                    <h2>累计意向客流</h2>
                    <p>123456</p>
                </div>
                <div class="tb_middle_inRight ">
                    <h2>当前时间</h2>
                    <span class="theTimeStr">时间</span>
                </div>
                <div class="tb_middle_inLeft">
                    <h2>今日进场客流</h2>
                    <p>123456</p>
                </div>
                <div class="tb_middle_inRight">
                    <h2>累计进场客流</h2>
                    <p>123456</p>
                </div>
            </div>
            <div class="tb tb_right">
                <h3 ondblclick="editEL(this);">每日进展馆客流</h3>
                <table class="table1">
                    <tr class="tb_title"><td>企业名称</td><td>盈利对利息覆盖能力</td><td>流动性还本付能力</td><td>清偿性还本付息能力</td></tr>
                    <tr><td>比音勒芬服饰股份有限公司</td><td>5.37</td><td>5.54</td><td>6.29<td></tr>
                    <tr><td>罗莱生活科技股份有限公司</td><td>5.13</td><td>5.47</td><td>1.94<td></tr>
                    <tr><td>日播时尚集团股份有限公司</td><td>5.41</td><td>5.46</td><td>1.51<td></tr>
                    <tr><td>深圳汇洁集团股份有限公司</td><td>5.33</td><td>5.49</td><td>3.19<td></tr>
                    <tr><td>维格娜丝时装股份有限公司</td><td>5.27</td><td>5.49</td><td>5.01<td></tr>
                    <tr><td>山东齐悦科技有限公司</td><td>5.42</td><td>5.43</td><td>3.59<td></tr>
                    <tr><td>仙宜岱股份有限公司</td><td>5.29</td><td>5.17</td><td>1.99<td></tr>
                </table>
            </div>
            <div style="clear:both"></div>
            <div class="tb tb_left">
                <h3 ondblclick="editEL(this);">每日分时进展区客流</h3>
                <table class="table1">
                    <tr class="tb_title"><td>企业名称</td><td>盈利对利息覆盖能力</td><td>流动性还本付能力</td><td>清偿性还本付息能力</td></tr>
                    <tr><td>安正时尚集团股份有限公司</td><td>5.58</td><td>5.63</td><td>1.56</td></tr>
                    <tr><td>广东柏堡龙股份有限公司</td><td>5.46</td><td>5.56</td><td>5.32</td></tr>
                    <tr><td>深圳富安娜家居用品股份有限公司</td><td>5.48</td><td>5.60</td><td>2.19<td></tr>
                </table>
                <h3 ondblclick="editEL(this);">每日分时段意向客流</h3>
                <table class="table1">
                    <tr class="tb_title"><td>企业名称</td><td>盈利对利息覆盖能力</td><td>流动性还本付能力</td><td>清偿性还本付息能力</td></tr>
                    <tr><td>比音勒芬服饰股份有限公司</td><td>5.37</td><td>5.54</td><td>6.29<td></tr>
                    <tr><td>罗莱生活科技股份有限公司</td><td>5.13</td><td>5.47</td><td>1.94<td></tr>
                    <tr><td>日播时尚集团股份有限公司</td><td>5.41</td><td>5.46</td><td>1.51<td></tr>
                    <tr><td>深圳汇洁集团股份有限公司</td><td>5.33</td><td>5.49</td><td>3.19<td></tr>
                    <tr><td>维格娜丝时装股份有限公司</td><td>5.27</td><td>5.49</td><td>5.01<td></tr>
                    <tr><td>山东齐悦科技有限公司</td><td>5.42</td><td>5.43</td><td>3.59<td></tr>
                    <tr><td>仙宜岱股份有限公司</td><td>5.29</td><td>5.17</td><td>1.99<td></tr>
                </table>
            </div>
            <div class="tb tb_middle">
                <h3 ondblclick="editEL(this);">每日进展馆客流</h3>
                <table class="table1">
                    <tr class="tb_title"><td>企业名称</td><td>盈利对利息覆盖能力</td><td>流动性还本付能力</td><td>清偿性还本付息能力</td></tr>
                    <tr><td>比音勒芬服饰股份有限公司</td><td>5.37</td><td>5.54</td><td>6.29<td></tr>
                    <tr><td>罗莱生活科技股份有限公司</td><td>5.13</td><td>5.47</td><td>1.94<td></tr>
                    <tr><td>日播时尚集团股份有限公司</td><td>5.41</td><td>5.46</td><td>1.51<td></tr>
                    <tr><td>深圳汇洁集团股份有限公司</td><td>5.33</td><td>5.49</td><td>3.19<td></tr>
                    <tr><td>维格娜丝时装股份有限公司</td><td>5.27</td><td>5.49</td><td>5.01<td></tr>
                    <tr><td>山东齐悦科技有限公司</td><td>5.42</td><td>5.43</td><td>3.59<td></tr>
                    <tr><td>仙宜岱股份有限公司</td><td>5.29</td><td>5.17</td><td>1.99<td></tr>
                </table>
            </div>
            <div class="tb tb_right">
                <h3 ondblclick="editEL(this);">每日进展区客流</h3>
                <table class="table1">
                    <tr class="tb_title"><td>企业名称</td><td>盈利对利息覆盖能力</td><td>流动性还本付能力</td><td>清偿性还本付息能力</td></tr>
                    <tr><td>深圳歌力思服饰股份有限公司</td><td>5.43</td><td>5.25</td><td>1.69<td></tr>
                    <tr><td>山东齐悦科技有限公司</td><td>5.42</td><td>5.43</td><td>3.59<td></tr>
                    <tr><td>探路者控股集团股份有限公司</td><td>5.38</td><td>5.21</td><td>3.16<td></tr>
                    <tr><td>仙宜岱股份有限公司</td><td>5.29</td><td>5.17</td><td>1.99<td></tr>
                    <tr><td>浙江棒杰数码针织品股份有限公司</td><td>5.21</td><td>5.00</td><td>2.77<td></tr>
                    <tr><td>浙江红蜻蜓鞋业股份有限公司</td><td>5.29</td><td>5.16</td><td>2.14<td></tr>
                    <tr><td>仙宜岱股份有限公司</td><td>5.29</td><td>5.17</td><td>1.99<td></tr>
                </table>
            </div>
            <div class="tb tb_right">
                <h3 ondblclick="editEL(this);">每日进展区参观时间</h3>
                <table class="table1">
                    <tr class="tb_title"><td>企业名称</td><td>盈利对利息覆盖能力</td><td>流动性还本付能力</td><td>清偿性还本付息能力</td></tr>
                    <tr><td>深圳歌力思服饰股份有限公司</td><td>5.43</td><td>5.25</td><td>1.69<td></tr>
                    <tr><td>山东齐悦科技有限公司</td><td>5.42</td><td>5.43</td><td>3.59<td></tr>
                    <tr><td>探路者控股集团股份有限公司</td><td>5.38</td><td>5.21</td><td>3.16<td></tr>
                    <tr><td>仙宜岱股份有限公司</td><td>5.29</td><td>5.17</td><td>1.99<td></tr>
                    <tr><td>浙江棒杰数码针织品股份有限公司</td><td>5.21</td><td>5.00</td><td>2.77<td></tr>
                    <tr><td>浙江红蜻蜓鞋业股份有限公司</td><td>5.29</td><td>5.16</td><td>2.14<td></tr>
                    <tr><td>仙宜岱股份有限公司</td><td>5.29</td><td>5.17</td><td>1.99<td></tr>
                </table>
            </div>
        </div>
    </div>
</div>


<script src="${root}/static/js/jquery-1.12.4.min.js"></script>
<script src="${root}/static/js/echarts.min.js"></script>
<script src="${root}/static/custom/index.js"></script>
<!–[if lt IE 9]>
<script src="${root}/static/js/css3-mediaqueries.js"></script>
<script src="${root}/static/js/html5shiv.min.js"></script>
<![endif]–>
</body>
</html>
