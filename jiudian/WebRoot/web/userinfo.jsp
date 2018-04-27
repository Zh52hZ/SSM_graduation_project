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
<body background="<%=webpath%>/images/66.png">
	<jsp:include flush="true" page="/web/comment/incTop.jsp"></jsp:include>


 <div class="clear"></div>
	<div class="center">
		<div class="regist">
			<div
				style="width: 800px; height: 30px; line-height: 30px; margin-bottom: 10px; margin-left: 15px; border-bottom: 1px solid #ececec; position: relative; margin-top: 12px;">
				<div
					style="width: 100px; margin-left: 15px; border-bottom: 5px solid #FC7676; height: 30px; line-height: 30px; position: absolute; bottom: 0px; color: #3f3f3f; text-align: center; font-size: 16px;">
					个人资料</div>
			</div>

			<form id="myform" method="post" role="form">
				<input type="hidden" name="id"
					value="${sessionScope.currentUser.id}" />
				<table cellpadding="0" cellspacing="0" width="100%">
					<tbody>
						<tr>
							<td width="25%" align="right">用&#8194;户&#8194;名:</td>
							<td width="75%"><input type="text" style="width: 212px"
								class="form-control"
								value="${sessionScope.currentUser.username}" name="username"
								id="username" size="30" class="re_in"
								> 
							</td>
						</tr>
						<tr>
							<td height="36" align="right">密&#8194;&#8194;&#8194;&#8194;码:</td>
							<td><input type="text" style="width: 212px"
								class="form-control" name="pwd" id="pwd"
								value="${sessionScope.currentUser.pwd}" size="30" class="re_in"
								>
								
							</td>
						</tr>
						<tr>
							<td height="36" align="right" style="">真实姓名:</td>
							<td><input type="text" name="name" id="name"
								style="width: 212px" class="form-control" 
								value="${sessionScope.currentUser.name}" size="30" class="re_in">
							</td>
						</tr>
						<tr>
							<td height="36" align="right">联系电话:</td>
							<td><input type="text" name="telphone" id="telphone"
								style="width: 212px" class="form-control"
								value="${sessionScope.currentUser.telphone}" size="30"
								class="re_in">
							</td>
						</tr>
						<tr>
							<td height="36" align="right">邮&#8194;&#8194;&#8194;&#8194;箱:</td>
							<td><input type="text" name="email" id="email"
								style="width: 212px" class="form-control"
								value="${sessionScope.currentUser.email}" size="30"
								class="re_in">
							</td>
						</tr>

						<tr>
							<td height="58"></td>
							<td><input type="button" value="保存修改" id="login_input"
								class="btn btn-info" style="width: 212px;" onclick="saveuser();">
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>


 <div class="clear"></div>

	<jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include>
	<input type="hidden" id="messageInfo" value="${messageInfo}" />
</body>
</html>


<script type="text/javascript">
function saveuser() {
	if ($("#username").val() == "") {
		alert("用户名不能为空！");
		return;
	}
	/* 密码验证  */
	var patrn=/^(\w){6,20}$/;
	if(!patrn.test($("#pwd").val())) {
			alert("密码格式有误！请输入6-20个字母、数字、下划线");
          	return;
		}
	if ($("#pwd").val() == "") {
		alert("密码不能为空！");
		return;
	}
	/* 姓名验证 */
	var regname=/^[\u4e00-\u9fa5]+$/;
		if(!regname.test($("#name").val())) {
			alert("姓名格式有误！请输入汉字姓名");
          	return;
		}
	 if ($("#name").val() == "") {
		alert("姓名不能为空！");
		return;
	}
	/* 邮箱验证  */
	var regemail=/^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
		if (!regemail.test($("#email").val())) {
			 alert("邮箱格式有误，请输入正确邮箱");
          	 return;
		}
		if ($("#email").val() == "") {
			alert("邮箱不能为空！");
			return;
	}
	
	/* 手机号验证  */
	 var myreg=/^[1][3,4,5,7,8,9][0-9]{9}$/;  
          if (!myreg.test($("#telphone").val())) {  
          	  alert("手机号格式有误，请输入正确的11位有效手机号码");
          	  return;
     } 
     if ($("#telphone").val() == "") {
		alert("手机号不能为空！");
		return;
	}
	var r=confirm("您确定要提交更新个人信息吗？");
	if (r==true)
 	 	{
			document.forms[0].action = "<%=path%>/index/upuserinfo";
			document.forms[0].submit();
			setTimeout(alert("信息更新成功！"),4000);
  		}
	}
	
	$(function() {
		var message = $("#messageInfo").val();
		if (message != '') {
			alert(message);
		}
	});
</script>
