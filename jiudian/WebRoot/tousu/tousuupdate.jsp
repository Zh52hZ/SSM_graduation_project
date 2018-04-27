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
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/tousu/list">用户留言管理</a>
					<i class="layui-icon">&#xe623;</i>用户留言回复
				</blockquote>

				<div class="title_right">
					<strong>用户留言回复</strong>
				</div>
				<div style="width: 1100px; margin: auto">
					<form method="post">
						<table class="table">
 
							<tr class="success">
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1"><span style="color: #e41f1f;float:left">【${tousu.tsperson}】</span><br/>留言:</td>
								<td width="90%">
								<input type="hidden" name="id" id="id"
									value="${tousu.id}" />
								  <textarea name="msg" id="msg"  style="width: 990px;height:100px;" disabled="disabled" rows="10" cols="80" class="form-control" >${tousu.msg}</textarea>
								</td>
							</tr>
							
							<tr class="active">
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">回复：</td>
								<td width="90%">
								  <textarea name="replay" id="replay" style="width: 990px;height:100px;" rows="10" cols="80" class="form-control" >${tousu.replay}</textarea>
								</td>
							</tr>
							
						 
						</table>

						<table class="margin-bottom-20 table  no-border">
							<tr>
								<td class="text-center"><input type="button"
									onclick="save();" value="确定" class="btn btn-info "
									style="width: 80px;float:right;" />
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
	if ($("#replay").val() == "") {
		alert("回复不能为空！");
		return;
	}
	var r = confirm("确定回复该内容吗？");
	if(r==true){
	document.forms[0].action = "<%=path%>/tousu/updatetousu";
	document.forms[0].submit();
}
}
</script>