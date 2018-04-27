<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String webpath = path + "/web";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="">
<meta name="Description" content="">
<title>诗雅客栈</title>
</script>
</head>
<body background="<%=webpath%>/images/66.png">
   <jsp:include flush="true" page="/web/comment/incTop.jsp"></jsp:include> 
    <div class="clear"></div>
<div class="center">
  <div class="regist">
    <div style="width: 940px; height: 45px; line-height: 30px; margin-bottom: 10px; margin-left: 15px; border-bottom: 1px solid #ececec; position: relative; margin-top: 12px;">
			<div
				style="width: 100px; margin-left: 15px; border-bottom: 5px solid #FC7676; height: 30px; line-height: 30px; position: absolute; bottom: 0px; color: #3f3f3f; text-align: center; font-size: 16px;">
				 用户登录
			</div>
	</div>
    <form id="myform" method="post" style="font-size: 14px;">
   <%--  <input type="hidden" id="messageInfo" value="${messageInfo}"/> --%>
      <table cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr>
          <td width="25%" height="36" align="right">用&#8194;户&#8194;名：</td>
          <td width="75%"><input type="text" name="username" style="width: 212px;" placeholder="请输入用户名" id="username" size="30" class="form-control" >
         </td>
        </tr>
        <tr>
          <td height="36" align="right">密&#8194;&#8194;&#8194;&#8194;码：</td>
          <td><input type="password" style="width: 212px;" class="form-control" placeholder="请输入密码" name="pwd" id="pwd" size="30">
    </td>
        </tr>
        
        <tr>
          <td height="58"></td>
          <td>
          <input type="button" onclick="login();" value="登录" class="btn btn-info" style="width: 212px;">
          </td>
        </tr>
      </tbody></table>
    </form>
  </div>
</div>

 <div class="clear"></div>
 
   <jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include> 
    
 </body></html>
 
 
 <script type="text/javascript">
function login() {
	if ($("#username").val() == "") {
		alert("用户名不能为空！");
		return;
	}
	 if ($("#pwd").val() == "") {
		alert("密码不能为空！");
		return;
	}
	document.forms[0].action = "<%=path%>/index/userlogin";
	document.forms[0].submit();
}

</script>
