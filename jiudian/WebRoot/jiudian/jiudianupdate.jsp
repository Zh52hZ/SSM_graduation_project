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
					<i class="layui-icon">&#xe623;</i>网站首页管理
				</blockquote>

				<div class="title_right">
					<strong>网站首页信息</strong>
				</div>
				<div style="width: 1100px; margin: auto">
					<form method="post">
						<table class="table table-hover">
							<tr>
								<td width="100%"><input type="hidden" name="id" id="id"
									value="${jiudian.id}" />
									
									<input type="hidden" name="msg" id="msg"
									  />
									
								 <script id="container" type="text/plain" style="width:1100px;height:300px;float:left"></script>		
									
                                </td>
							</tr>
						</table>

						<table class="margin-bottom-20 table  no-border"  >
								<tr><input type="button"
									onclick="save();" value="确定" class="btn btn-info "
									style="width: 80px;float: right"/>
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

   var ue = UE.getEditor('container');
        
        ue.ready(function() {
		    //设置编辑器的内容
		    ue.setContent('${jiudian.msg}');
		    
		});
		
function save() {

   var htmlv = ue.getContent();
   
	if (htmlv == "") {
		alert("信息不能为空！");
		return;
	}
	document.getElementById("msg").value = htmlv;
	document.forms[0].action = "<%=path%>/jd/updatejiudian";
	document.forms[0].submit();

}
</script>