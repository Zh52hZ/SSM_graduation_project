<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>对不起，我出问题了</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/web/css/main.css">
	<style type="text/css">
	*{
	margin: 0;
	padding: 0
	}
	.msg{
	text-align: center; /*内容水平居中*/
	line-height: 200px;
	color:#fff;
	font-size: 25px;
	}
	a{
	text-decoration: none;
	color:#fff;
	}
	p{
	text-align: center;
	}
	</style>

  </head>
  <body>
  	<div style="width: 1366px;height:640px;no-repeat; background-size:1366px 640px; background-image:url(img/404.jpg)">
  		<div class="msg">非常抱歉，由于某种神秘因素，您来到了这儿，部分功能还未完善，请见谅
  		</div>
  		<br /><p><b><a class="my-face" href="http://localhost:8080/jiudian" style="text-align: center;"> |´・ω・)ノ 点我</a></b></p>
  	</div>
  </body>
</html>
