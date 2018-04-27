<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
<base href="<%=basePath%>">
	<link rel="stylesheet" type="text/css" href="css/style.css"
		tppabs="css/style.css" />
	<style>
body {
	height: 100%;
	background: #16a085;
	overflow: hidden;
}

canvas {
	z-index: -1;
	position: absolute;
}
</style>
	<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/verificationNumbers.js"
		tppabs="js/verificationNumbers.js"></script>
	<script src="js/Particleground.js" tppabs="js/Particleground.js"></script>
</head>
<body>
	<dl class="admin_login">
		<dt>
  			<strong>诗雅客栈后台管理系统</strong>
 			 <em>Management System</em>
 			 <em>System By Zhouhao</em>
 		</dt>
		<form method="post" action="<%=path%>/index/login">
			<input type="hidden" id="messageInfo"
				value="${requestScope.messageInfo}" />
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<dd class="user_icon">
					<input type="text" class="login_txtbx" style="height: 45px;width: 320px" placeholder="账号" 
						name="username" id="username" />
				</dd>
				<dd class="pwd_icon">
					<input type="password" class="login_txtbx" style="height: 45px;width: 320px" placeholder="密码" 
						name="pwd" id="pwd" />
				</dd>
				<dd>
					<input type="button"
						onclick="login()" class="submit_btn" value="登录">
				</dd>
			</table>
		</form>
	</dl>
</body>
</html>
<script>
function login(){
     if($("#username").val() == ""){
          alert("请输入用户名！");
          return ;
     }
      if( $("#pwd").val() == ""){
          alert("请输入密码！");
          return ;
     }  
     document.forms[0].action = "<%=path%>/index/login";
	 document.forms[0].submit();
	}
	$(document).ready(function() {
		var $messageInfo = $("#messageInfo").val();
		if ($messageInfo != null && $messageInfo != "") {
			alert($messageInfo);
			$("#messageInfo").val("");
		}
	});
	$(document).ready(function() {
    //粒子背景特效
  	$('body').particleground({
    	dotColor: '#5cbdaa',
    	lineColor: '#5cbdaa'
  		});
	});
</script>