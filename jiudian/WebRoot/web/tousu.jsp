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
#huifu {
	display: block;
	height: 40px;
	line-height: 40px;
	text-align: center;
	width: 130px;
	background: #4ad8ce;
	font-size: 14px;
	float: left;
	border-radius: 3px;
	font-size: 16px;
	color: #fff;
	float: right;
}

#huifu:HOVER {
	background: #3ab6ad;
}

body {
	background-color: #2D2D2D
}

#img1 {
	height: 100px;
	width: 130px;
	padding-bottom: 5px;
}

#img2 {
	height: 100px;
	width: 100px;
	padding-bottom: 5px;
}
</style>
</head>
<body background="<%=webpath%>/images/bg.jpg">
	<jsp:include flush="true" page="/web/comment/incTop.jsp"></jsp:include>
	<div id="mydiv"></div>
<div class="clear"></div>
	<div class="center">
		<div class="position">
			<p>
				<span>当前位置</span><a href="#">首页</a>>><a href="#">留言</a>
			</p>
		</div>
		<div class="request">
		
			<c:forEach items="${tousuList}" var="tousu">
				<dl>
					<dt>
						<img id="img2" src='<%=webpath%>/touxiang/10.png'> <span>${tousu.tsperson}</span>
					</dt>
					<dd>
						<div class="re_more">
							<p><img src="<%=webpath%>/images/huifu.png">${tousu.msg}</p>
							<p style="color:#ccc">留言时间:${tousu.tstime}</p>
							<div class="re_con">
							<c:if test="${tousu.replay != null}">
								<p>
									<em>诗雅客栈</em><p>${tousu.replay}</p>
								</p>
								<p style="color:#ccc">回复时间:${tousu.replaytime}</p>
							</c:if>
							<c:if test="${tousu.replay == null}">
								
							</c:if>
								<div class="clear"></div>
							</div>
							
						</div>
					</dd>
					<dd class="clear"></dd>
				</dl>
			</c:forEach>
		</div>
		<div class="re_action">

			<form action="" method="post">
				<table cellpadding="0" cellspacing="0" width="100%">
					<tbody>
						<tr style="float:right;">
							<!-- <td align="right" height="190">内容：</td> -->
							<td><span>留言:</span>
								<textarea rows="" id="msg" cols="" name="msg" class="form-control"
									style="color: #656564;" placeholder="请输入内容..."></textarea></td>
						</tr>
						<tr>
							<td>
								<button style="float:right;width: 210px;" type="button"
									class="btn btn-info" onclick="tousu()" value="">留言</button></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>

	</div>
	<div class="clear"></div>
	<!-- 页脚   -->
	<jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include>
</body>
</html>


<script type="text/javascript">
function tousu() {
    <c:if test="${sessionScope.currentUser==null}">
        alert("请先登录");
        return;
    </c:if>
	 if ($("#msg").val() == "") {
		alert("内容不能为空！");
		return;
	}
	 var r=confirm("确定提交留言吗？");
	 if (r==true)
 	 	{
			document.forms[0].action = "<%=path%>/index/ts";
			document.forms[0].submit();
			alert("感谢您的留言，祝您生活愉快");
  		}
	}
</script>