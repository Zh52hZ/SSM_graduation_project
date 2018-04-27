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
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/loginuser/list">会员信息管理</a>
				</blockquote>

				<div class="title_right">
					<strong>会员信息修改</strong>
				</div>
				<div style="width: 300px; margin: auto">
					<form method="post">
						<table class="table table-condensed">
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">用&#8194;户&#8194;名：</td>
								<td width="60%"><input type="hidden" name="id" id="id"
									value="${loginuser.id}" /><input type="text" name="username" id="username" value="${loginuser.username}"
									class="form-control" /></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">密&#8194;&#8194;&#8194;&#8194;码：</td>
								<td width="60%"><input type="text" name="pwd" id="pwd" value="${loginuser.pwd}"
									class="form-control" /></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">姓&#8194;&#8194;&#8194;&#8194;名：</td>
								<td width="60%"><input type="text" name="name" id="name" value="${loginuser.name}"
									class="form-control"/></td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">联系电话：</td>
								<td width="60%"><input type="text" name="telphone" id="telphone" value="${loginuser.telphone}"
									class="form-control"/> </td>
							</tr>
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">邮&#8194;&#8194;&#8194;&#8194;箱：</td>
								<td width="60%"><input type="text" name="email" id="email" value="${loginuser.email}"
									class="form-control"/> </td>
							</tr>
						</table>
						<input type="button"
									onclick="save();" value="确定" class="btn btn-info "
									style="width: 300px;" />
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
	/* 密码验证  */
	var patrn=/^(\w){6,20}$/;
	if(!patrn.test($("#pwd").val())) {
			alert("密码有误！只能输入6-20个字母、数字、下划线");
          	return;
		}
	if ($("#pwd").val() == "") {
		alert("密码不能为空！");
		return;
	}
	/* 姓名验证 */
	var regname=/^[\u4e00-\u9fa5]+$/;
		if(!regname.test($("#name").val())) {
			alert("姓名有误！只能输入汉字姓名");
          	return;
		}
	 if ($("#name").val() == "") {
		alert("姓名不能为空！");
		return;
	}
	/* 邮箱验证  */
	var regemail=/^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
		if (!regemail.test($("#email").val())) {
			 alert("邮箱有误！请输入正确邮箱");
          	 return;
		}
		if ($("#email").val() == "") {
			alert("邮箱不能为空！");
			return;
	}
	
	/* 手机号验证  */
	 var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;  
          if (!myreg.test($("#telphone").val())) {  
          	  alert("手机号有误！请输入正确的11位有效手机号码");
          	  return;
     } 
     if ($("#telphone").val() == "") {
		alert("手机号不能为空！");
		return;
	}
	
	var r=confirm("您确认要更新该用户信息吗？请您确认信息无误后在更改!");
	if (r==true)
 	 {
		document.forms[0].action = "<%=path%>/loginuser/updateloginuser";
		document.forms[0].submit();
		setTimeout(alert("用户信息更新成功！"), 1000);
  	}
}
</script>