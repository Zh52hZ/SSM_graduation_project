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

</head>
<body background="<%=webpath%>/images/bg.jpg">
	<jsp:include flush="true" page="/web/comment/incTop.jsp"></jsp:include>


<div class="clear"></div>
	<div class="center">
		<div class="position">
			<p>
				<span>当前位置</span><a href="<%=path %>/index/aboutus?id=1">首页</a> » <a href="<%=path %>/index/hdlist">优惠活动</a> » <a href="#">${huodong.name}</a>
			</p>
		</div>
			<div class="cat_theme">
				<p>
					<span></span>${huodong.name}<em></em>
				</p>
			</div>
			<div class="web">
				<div style="text-align:center;min-height:300px">
					<div style=""><span>${huodong.msg}</span></div>
				</div>
				<div style="float:right;color:#ccc">
					<p>发布时间：${huodong.time}</p>
				</div>
			</div>
		
	</div>
	<div class="clear"></div>
	<jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include>
</body>
</html>