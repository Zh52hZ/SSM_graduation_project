<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
<base href="<%=basePath%>">
</head>

<body>
	<!--
	顶部 -->
	<%@include file="/common/top.jsp"%>
	<!--顶部 -->
	<div id="middle">
		<!-- 菜单 -->
		<%@include file="/common/menu.jsp"%>
		<!-- 菜单  -->
		<div class="right" id="mainFrame">
			<div class="right_cont">
				<blockquote class="layui-elem-quote">
					当前位置
					<i class="layui-icon">&#xe623;</i> <a href="<%=path%>/index.jsp">首页</a>
				</blockquote>
				<div class="title_right">
					<marquee>
					<strong style="color:#023b4d;font-size:20px">欢迎使用诗雅客栈后台管理系统</strong></marquee>
				</div>
				<div>
					<img src="img/timg.jpg" width=1126px height=486px/>
				</div>
			</div>
		</div>
	</div>
	<script>
		!function() {
			laydate.skin('molv');
			laydate({
				elem : '#Calendar'
			});
		}();
	</script>
</body>
</html>
