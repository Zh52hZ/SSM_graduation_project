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

	<input type="hidden" id="messageInfo" value="${messageInfo}" />
	
	<div class="clear"></div>
	<div class="center">
		<div class="position">
				<p>
					<span>当前位置</span><a href="<%=path %>/index/aboutus?id=1">首页</a>>><a href="<%=path%>/index/index" >客栈客房</a>
				</p>
			</div>
		<div class="clear"></div>
			<div class="meeting">
				<c:forEach items="${kefangList}" var="kefang">
					<div class="meetlist white">
						<a href="<%=path%>/index/kfview?id=${kefang.id}">
						<img src="<%=path%>/${kefang.pic}" width="301" height="196">
						</a>
						<div class="meetmore">
							<h3>${kefang.name}</h3>
							客房剩余数量：<span class="badge">${kefang.num}</span> 
							<span class="label label-info">${kefang.type}</span>
							<p>${kefang.mss}</p>
							<em>价格：<strong>￥ ${kefang.money}元</strong> </em> 
							<a href="<%=path%>/index/kfview?id=${kefang.id}">查看详情</a>
						</div>
					</div>
				</c:forEach>
  			</div>
  <!--右边区域-->
		</div>
		<div class="clear"></div>
</body>
<jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include>
</html>


<script type="text/javascript">
	$(function() {

		var message = $("#messageInfo").val();
		if (message != '') {
			alert(message);
		}

	});
</script>