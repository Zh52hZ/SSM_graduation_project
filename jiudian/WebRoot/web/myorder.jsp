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
		<div class="center" style="background: #fff;">
			<div class="position">
     			 <p><span>当前位置</span><a href="#">首页</a>>><a href="<%=path%>/index/myorder">我的订单</a></p>
   			</div>
				<div class="user_center">
					<div
						style="width: 0px; height: 30px; line-height: 30px; margin-bottom: 10px; margin-left: 10px; border-bottom: 1px solid #ececec; position: relative; margin-top: 12px;">
						<div
							style="width: 100px; margin-left: 15px; border-bottom: 5px solid #FC7676; height: 30px; line-height: 30px; position: absolute; bottom: 0px; color: #3f3f3f; text-align: center; font-size: 16px;">
							客房订单
						</div>
					</div>
					<table class="table table-hover" >
						<thead>
							<tr>
								<td>订单编号</td>
								<td>订单内容</td>
								<td>下单时间</td>
								<td>入住日期</td>
								<td>离开日期</td>
								<td>金额</td>
								<td>状态</td>
								<td>操作</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${dingdanList}" var="order">
							<c:if test="${order.type == 1}">
								<tr >
									<td>${order.id}</td>
									<td>${order.name}</td>
									<td>${order.time}</td>
									<td>${order.rzrq}</td>
									<td>${order.lkrq}</td>
									<td>${order.money}</td>
									<c:if test="${order.state !='已取消'}" >
									<td style="color:#fc7676">${order.state}</td>
									</c:if>
									<c:if test="${order.state =='已取消'}" >
									<td style="color:#ccc">${order.state}</td>
									</c:if>
									<td>
									<c:if test="${order.state!='已取消'}" >		
										<input type="button" class="btn btn-info" style="height: 30px"
											onclick="javascript:window.location.href='<%=path%>/index/qxorder?id=${order.id}'" value="取消">
                                   </c:if>
								 </td>
								</tr>
								 </c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
				<div class="user_center">
					<div
						style="width: 0px; height: 30px; line-height: 30px; margin-bottom: 10px; margin-left: 10px; border-bottom: 1px solid #ececec; position: relative; margin-top: 12px;">
						<div
							style="width: 100px; margin-left: 15px; border-bottom: 5px solid #FC7676; height: 30px; line-height: 30px; position: absolute; bottom: 0px; color: #3f3f3f; text-align: center; font-size: 16px;">
							服务订单
						</div>
					</div>
					<table class="table table-hover" >
						<thead>
							<tr>
								<td> 订单编号</td>
								<td> 订单内容</td>
								<td>下单时间</td>
								<td>下单金额</td>
								<td> 状态</td>
								<td>操作</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${dingdanList}" var="order">
							<c:if test="${order.type == 2}">
								<tr >
									<td>${order.id}</td>
									<td>${order.name}</td>
									<td>${order.time}</td>
									<td>￥${order.money}</td>
									<c:if test="${order.state !='已取消'}" >
									<td style="color:#fc7676">${order.state}</td>
									</c:if>
									<c:if test="${order.state =='已取消'}" >
									<td style="color:#ccc">${order.state}</td>
									</c:if>
									<td>
									<c:if test="${order.state!='已取消'}" >		
										<input type="button" class="btn btn-info" style="height: 30px"
											onclick="javascript:window.location.href='<%=path%>/index/qxorder?id=${order.id}'" value="取消">
                                   </c:if>
								 </td>
								</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
			
			<!--右边区域-->
			
		</div>
		<div class="clear"></div>
		<jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include>
	</body>
</html>