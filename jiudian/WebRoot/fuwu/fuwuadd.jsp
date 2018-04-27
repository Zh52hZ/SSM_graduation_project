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
				
				<!-- 导航 start -->
				<blockquote class="layui-elem-quote">
					当前位置
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/index.jsp">首页</a>
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/fuwu/list">服务信息管理</a>
					<i class="layui-icon">&#xe623;</i>服务信息添加
				</blockquote>
				<div class="title_right">
					<strong>服务信息添加</strong>
				</div>
				<!-- 导航 end -->
				
				<!-- 内容编辑区 start -->
				<div style="width: 1100px; margin: auto">
					<form method="post">
						<table class="table table-hover">
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">服务名称：</td>
								<td width="95%">
									<input type="text" name="name" id="name" class="form-control" />
								</td>
							</tr>
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">服务说明：</td>
								<td width="95%">
								<script id="container" type="text/plain" style="width:1000px;height:300px;"></script>			  
									<input type="hidden" name="msg" id="msg" class="form-control"  />	
								</td>
							</tr>
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">服务价格：</td>
								<td width="95%">
									<input type="text" name="money" id="money" class="form-control" />
								</td>
							</tr>
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">服务数量：</td>
								<td width="95%">
									<input type="text" name="num" id="num" class="form-control" />
								</td>
							</tr>
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">服务图片：</td>
								<td width="95%">
 									<input type="text" name="fujian" id="fujian" class="form-control"  readonly="readonly" />
						        	<input type="button" class="btn btn-success" style="width: 999px" value="上传图片" onclick="up()"/>
                                </td>
							</tr>
							
						</table>
						<table class="margin-bottom-20 table  no-border">
							<input type="button"
								   onclick="save();" 
								   value="确定" 
								   class="btn btn-info "
								   style="width: 80px;float:right" />
						</table>
					</form>
				</div>
				<!-- 内容编辑区 end -->
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
 var ue = UE.getEditor('container');
 function up()
	       {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
	       }
	       
	       
function save() {
 var htmlv = ue.getContent();
	if ($("#name").val() == "") {
		alert("名称不能为空！");
		return;
	}
	 if ($("#money").val() == "") {
		alert("价格不能为空！");
		return;
	}
	document.getElementById("msg").value = htmlv; 
	document.forms[0].action = "<%=path%>/fuwu/addfuwu";
	document.forms[0].submit();

}
</script>