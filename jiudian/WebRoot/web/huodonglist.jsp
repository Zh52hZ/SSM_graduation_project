<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String webpath = path + "/web";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="">
<meta name="Description" content="">
<title>诗雅客栈</title>
<style type="text/css">
#hd {
	color: #656564;
}

#hd:hover {
	color: #45b7d9;
}

</style>
</head>
<body background="<%=webpath%>/images/bg.jpg">
	<jsp:include flush="true" page="/web/comment/incTop.jsp"></jsp:include>
	<div class="clear"></div>
	<div class="center">
		<div class="position">
			<p>
				<span>当前位置</span><a href="<%=path %>/index/aboutus?id=1">首页</a>>><a
					href="<%=path%>/index/hdlist">优惠活动</a>
			</p>
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th style="background-color: #fdfdfd;color:#656564;">发布时间</th>
					<th style="background-color: #fdfdfd;color:#656564;">活动名称</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${huodongList}" var="huodong">
			<tr>
				<td>${huodong.time}</td>
				<td><a id="hd" href="<%=path%>/index/hdview?id=${huodong.id}"
				title="${huodong.name}" target="_blank">${huodong.name}</a>
				</td>
			</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="clear"></div>
	<jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include>
</body>
</html>