<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/demo/js/layui/layui.js"></script>
 <script type="text/javascript" src="/demo/js/jquery-3.3.1.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>我使用的第一个模板</title>
  <link rel="stylesheet" href="/demo/js/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">导航全是百度别瞎点了</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="javascript:openURL('http://www.baidu.com/');">控制台</a></li>
      <li class="layui-nav-item"><a href="javascript:openURL('http://www.baidu.com/');">商品管理</a></li>
      <li class="layui-nav-item"><a href="javascript:openURL('http://www.baidu.com/');">用户</a></li>
      <li class="layui-nav-item"><a href="javascript:openURL('http://www.bilibili.com/');">全是弟弟</a></li>
      <li class="layui-nav-item">
        <a href="javascript:openURL('http://www.baidu.com/');">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="javascript:openURL('http://www.baidu.com/');">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:openURL('http://www.baidu.com/');">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          马云
        </a>
        <dl class="layui-nav-child">
          <dd><a href="javascript:openURL('http://www.baidu.com/');">基本资料</a></dd>
          <dd><a href="javascript:openURL('http://www.baidu.com/');">安全设置</a></dd>
          
        </dl>
      </li>
      <li class="layui-nav-item"><a href="javascript:openURL('http://www.baidu.com/');">退了</a></li>
    </ul>
  </div>
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">所有商品</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">解决方案</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">云市场</a></li>
        <li class="layui-nav-item"><a href="">发布商品</a></li>
      </ul>
    </div>
  </div>
  <script type="text/javascript">
 var openURL = function(url){
	 window.open(url,"rightframe");
 }
 layui.use('element', function(){
	  var element = layui.element;
	  
	});
  </script>
  
</body>
</html>