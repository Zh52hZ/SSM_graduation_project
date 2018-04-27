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
				<span>当前位置</span><a
					href="http://localhost:8080/jiudian/index/aboutus?id=1">首页</a> &gt;
				<a href="<%=path%>/index/fwlist">其他服务</a> &gt; 其他服务预订
			</p>
		</div>
		<div class="clear"></div>
		<div class="order_form showform">
			<div
				style="width: 800px; height: 30px; line-height: 30px; margin-bottom: 10px; margin-left: 15px; border-bottom: 1px solid #ececec; position: relative; margin-top: 12px;">
				<div
					style="width: 100px; margin-left: 15px; border-bottom: 5px solid #FC7676; height: 30px; line-height: 30px; position: absolute; bottom: 0px; color: #3f3f3f; text-align: center; font-size: 16px;">
					预定服务信息</div>
			</div>
			<form action="#" method="post" id="myform">
				<table cellpadding="0" cellspacing="0" width="100%"
					style="font-size:14px">
					<tbody>
						<tr>
							<td width="22%" height="32" align="right">
							</td>
							<td width="100%"><img height="auto" width="190px" alt="" src="<%=path%>/${fuwu.pic}"></td>
						</tr>
						<tr>
							<td width="22%" height="32" align="right"><strong>服务名称：</strong>
							</td>
							<td width="78%">${fuwu.name}</td>
						</tr>
						<tr>
							<td align="right" height="32"><strong>价&#8194;&#8194;&#8194;&#8194;格：</strong>
							</td>
							<td>￥ ${fuwu.money}</td>
						</tr>
					</tbody>
				</table>
			</form>
			<input style="float:right" type="button" onclick="submitorder();" value="提交订单"  class="btn btn-info" >
			<div class="clear"></div>
		</div>

	</div>
	<div class="clear"></div>
	<div class="clear"></div>
	<div class="clear"></div>
	<div class="clear"></div>
	<div class="clear"></div>
	<div class="clear"></div>
	<div class="clear"></div>
	<jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include>

</body>
<script type="text/javascript">
function submitorder() {
    var r=confirm("您确定要提交订单吗？");
	if (r==true)
 	 	{
      		document.forms[0].action = "<%=path%>/index/submitorderfw?id=${fuwu.id}";
	  		document.forms[0].submit();
		} 
	}
</script>
</html>