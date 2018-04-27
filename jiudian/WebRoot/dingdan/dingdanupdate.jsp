<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
<base href="<%=basePath%>">
</head>

<body>
	<!-- 顶部 -->
	<%@include file="/common/top.jsp"%>
	<!-- 顶部 -->
	<div id="middle">
		<!-- 菜单 -->
		<%@include file="/common/menu.jsp"%>
		<!-- 菜单  -->
		<div class="right" id="mainFrame">
			<div class="right_cont">
				<blockquote class="layui-elem-quote">
					当前位置
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/index.jsp">首页</a>
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/dingdan/list">订单信息管理</a>
				</blockquote>

				<div class="title_right">
					<strong>订单信息修改</strong>
				</div>
				<div style="width: 300px; margin: auto">
					<form method="post">
						<table class="table table-hover">
 
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">ID：</td>
								<td width="60%"><input type="hidden" name="id" id="id"
									value="${dingdan.id}" /><span class="label label-warning">${dingdan.id}</span></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">下单商品：</td>
								<td width="60%"><input type="text" name="name" id="name" value="${dingdan.name}"
									class="form-control"/></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">下单金额：</td>
								<td width="60%"><input type="text" name="je" id="je" value="${dingdan.money}"
									class="form-control"/> </td>
							</tr>
							<c:if test="${dingdan.type == 1}">
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">入住日期：</td>
								<td width="60%"><input type="text" name="rzrq" id="rzrq" value="${dingdan.rzrq}"
									class="form-control"/> </td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">离开日期：</td>
								<td width="60%"><input type="text" name="lkrq" id="lkrq" value="${dingdan.lkrq}"
									class="form-control"/> </td>
							</tr>
							</c:if>
						</table>
						<table class="margin-bottom-20 table  no-border">
							<tr>
								<td class="text-center"><input type="button"
									onclick="save();" value="确定" class="btn btn-info "
									style="width: 80px;" />
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
function save() {
	if ($("#name").val() == "") {
		alert("名称不能为空！");
		return;
	}
	 
	document.forms[0].action = "<%=path%>/dingdan/updatedingdan";
	document.forms[0].submit();

}
</script>