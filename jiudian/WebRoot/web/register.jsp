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
<title>诗雅客栈</title><base>
<script type="text/javascript" src="<%=webpath%>/js/index.js"></script>
<style>
    #warning{  
        position:absolute;  
        color:red;  
        font-size: 16px;  
        font-weight: normal;  
        font-style: normal;  
        text-decoration: none; 
        }  
</style>
 
</head>
<body background="<%=webpath%>/images/66.png">
   <jsp:include flush="true" page="/web/comment/incTop.jsp"></jsp:include> 


 <div class="clear"></div>
<div class="center">
  <div class="regist">
    <div style="width: 800px; height: 30px; line-height: 30px; margin-bottom: 10px; margin-left: 15px; border-bottom: 1px solid #ececec; position: relative; margin-top: 12px;">
			
			<div style="width: 100px; margin-left: 15px; border-bottom: 5px solid #FC7676; height: 30px; line-height: 30px; position: absolute; bottom: 0px; color: #3f3f3f; text-align: center; font-size: 16px;">
						会员注册
			</div>
	</div>
    <form id="myform" name="form1" method="post" style="font-size: 14px;">
      <table cellpadding="0" cellspacing="0" width="100%" id="reg">
        <tbody><tr>
          <td width="25%" height="36" align="right">用&#8194;户&#8194;名：</td>
          <td width="25%">
          <input type="text" class="form-control" style="width: 212px;" name="username" id="username" size="30" placeholder="请输入您的用户名" >
          </td>
         
        </tr>
        <tr>
          <td height="36" align="right">密&#8194;&#8194;&#8194;&#8194;码：</td>
          <td><input type="password" name="pwd" class="form-control" style="width: 212px;" id="pwd" size="30" placeholder="6-20个字母、数字、下划线">
    		</td>
    		<td><span id="wanging1"></span></td>
        </tr>
 		<tr>
          <td height="36" align="right">确认密码：</td>
          <td><input type="password" name="pwd1" class="form-control" onblur="check()" style="width: 212px;" id="pwd1" size="30" placeholder="请再次输入密码">
    		</td>
    	  <td><span id="warning"></span></td>
        </tr>
        <tr>
          <td height="36" align="right">真实姓名：</td>
          <td><input type="text" name="name" class="form-control"  style="width: 212px;" id="name" size="30" class="re_in" placeholder="您的真实姓名"></td>
        </tr>
        <tr>
          <td height="36" align="right">手&#8194;机&#8194;号：</td>
          <td><input type="text" name="telphone" class="form-control" style="width: 212px;"  id="telphone" size="30" class="re_in" placeholder="建议使用您的常用手机号"></td>
        </tr>
         <tr>
          <td height="36" align="right">邮&#8194;&#8194;&#8194;&#8194;箱：</td>
          <td><input type="text" name="email" class="form-control" style="width: 212px;"  id="email" size="30" class="re_in" placeholder="您的邮箱"></td>
        </tr>
        <tr>
          <td height="58"></td>
          <td><input type="button" value="注册" id="login_input" class="btn btn-info"
									style="width: 212px; " onclick="register();"></td>
        </tr>
      </tbody></table>
    </form>
  </div>
</div>


 <div class="clear"></div>
 
   <jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include> 
 
 </body></html>
  
 <script type="text/javascript">
    function check(){  
        if(document.getElementById("pwd").value!=  
            document.getElementById("pwd1").value)  
        {  
            document.getElementById("warning").innerHTML="两次密码的输入不一致";  
        }else{  
            document.getElementById("warning").innerHTML="   ";  
        }  
    }  
function register() {
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
	var r=confirm("请您确认信息是否无误，确定注册吗？");
	if (r==true)
 	 {
  		document.forms[0].action = "<%=path%>/index/register";
		document.forms[0].submit();
		alert("${messageInfo}");
  	 }
}

/* $(document).ready(function() {
		var messageInfo = $("#messageInfo").val();
		if (messageInfo != null && messageInfo != "") {
			alert(messageInfo);
			$("#messageInfo").val("");
		}
	}); */

</script>


