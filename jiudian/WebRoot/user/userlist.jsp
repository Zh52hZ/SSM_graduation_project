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
					<i class="layui-icon">&#xe623;</i><a href="http://localhost:8080/jiudian/user/list">管理员管理</a>
				</blockquote>
				<div class="title_right">
					 <strong>管理员管理</strong>
				</div>
				<div style="width:1100px; margin: auto">
					<form method="post">
						<table class="table">
							<tr>
								<td width="10%" align="center" nowrap="nowrap" bgcolor="#f1f1f1">用户名：</td>
								<td width="40%"><input type="text" class="form-control" name="username" />
								</td>
								<td width="50%">
								<input type="button" onclick="query();" value="查询"
									class="layui-btn layui-btn-primary layui-btn-sm"  />
								<a
						class="layui-btn layui-btn-primary layui-btn-sm" id="modal-9735581"
						href="<%=path%>/user/useradd.jsp" role="button">添加</a>
						<input type="button" value="打印" onclick="PrintDoc()" class="layui-btn layui-btn-primary layui-btn-sm" />  
       							<input id="Button1" type="button" value="导出Excel" class="layui-btn layui-btn-primary layui-btn-sm" onclick="javascript:HtmlExportToExcel('PanelExcel')" />  
        						<input id="Button2" type="button" value="刷新" class="layui-btn layui-btn-primary layui-btn-sm" onclick="javascript: location.reload()" />  
        						<a id="dlink" style="display: none;"></a>
								</td>
							</tr>
						</table>
					</form>
					<div id="PanelExcel">  
					<table class="table table-hover" id="tbHaederText">
					<caption hidden id="lbl_innum_link">管理员信息</caption>
						<thead>
							<tr align="center">
								<th><strong>ID</strong></th>
								<th><strong>用户名</strong></th>
								<th><strong>密码</strong></th>
								<th><strong>用户类型</strong></th>
								<th class="s_close"><strong>操作</strong></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${userList}" var="user">
								<tr align="center">
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.pwd}</td>
									<td>${user.utype}</td>
									<td class="s_close" nowrap="nowrap"><a
										href="<%=path%>/user/toupdateuser?id=${user.id}"><i class="layui-icon">&#xe642;</i>编辑
									</a>&nbsp;|&nbsp;<a href="<%=path%>/user/deleteuser?id=${user.id}"><i class="layui-icon">&#xe640;</i>删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script language="JavaScript">	
function query() {		
	var action = "<%=path%>/user/list";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
</script>