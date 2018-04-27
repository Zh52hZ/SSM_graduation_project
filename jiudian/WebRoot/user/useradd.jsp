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
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/user/list">管理员管理</a>
					<i class="layui-icon">&#xe623;</i>添加管理员
				</blockquote>
				<div class="title_right">
					<strong>管理员添加</strong>
				</div>
				<div style="width: 300px; margin: auto">
					<form method="post">
						<table class="table table-bordered">
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">账&nbsp;&nbsp;户&nbsp;&nbsp;名：</td>
								<td width="60%"><input type="text" name="username" id="username"
									class="form-control" /></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
								<td width="60%"><input type="text" name="pwd" id="pwd"
									class="form-control" /></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">用户类型：</td>
								<td width="60%">
								   <select name="utype"  class="form-control">
								       <option value="普通管理员">普通管理员</option>
								       <option value="超级管理员">超级管理员</option>
								   </select>
                                </td>
							</tr>
						</table>
						<table class="margin-bottom-20 table  no-border">
							<tr>
								<td class="text-center"><input type="button" onclick="save();" value="确定"
									class="btn btn-info "  style="width: 300px;" /></td>
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
	if ($("#username").val() == "") {
		alert("用户名不能为空！");
		return;
	}
	if ($("#pwd").val() == "") {
		alert("密码不能为空！");
		return;
	}
	document.forms[0].action = "<%=path%>/user/adduser";
	document.forms[0].submit();
}
</script>