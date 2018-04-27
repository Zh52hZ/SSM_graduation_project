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
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/kefang/list">客房信息管理</a>
					<i class="layui-icon">&#xe623;</i>客房信息添加
				</blockquote>

				<div class="title_right">
					<strong>客房信息添加</strong>
				</div>
				<div style="width: 1100px; margin: auto">
					<form method="post">
						<table class="table table-hover">
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">客房名称：</td>
								<td width="95%"><input type="text" name="name" id="name"
									class="form-control" placeholder="客房名称必须填"/></td>
							</tr>
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">客房类型：</td>
								<td width="95%">
								<select name="type"  class="form-control">
								       <option value="单人间">单人间</option>
								       <option value="双人间">双人间</option>
								       <option value="四人间">四人间</option>
								   </select>
								</td>
							</tr>
							<tr>
								<td width="5%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">客房说明：</td>
								<td width="95%">
								
					<script id="container" type="text/plain" style="width:990px;height:300px;"></script>
					<input type="hidden" name="msg" id="msg" class="span1-10" />				 
								  
								</td>
							</tr>
							
							
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">客房价格：</td>
								<td width="60%"><input type="text" name="money" id="money"
									class="form-control" placeholder="价格必须填"/></td>
							</tr>
							
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">客房数量：</td>
								<td width="60%"><input type="text" name="num" id="num"
									class="form-control" placeholder="客房数量必须填"/></td>
							</tr>
							
							<tr>
								<td width="40%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">客房图片：</td>
								<td width="60%">
								 <input type="text" class="form-control" name="fujian" id="fujian" readonly="readonly"/>
						        <input type="button" class="btn btn-success" value="上传图片" onclick="up()" style="width: 990px;"/>
								 </td>
							</tr>
							
							
						</table>
						<table class="margin-bottom-20 table  no-border">
							<tr>
								<td class="text-center"><input type="button" onclick="save();" value="确定"
									class="btn btn-info " style="width: 80px;float:right" /></td>
							</tr>
						</table>

					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
 var ue = UE.getEditor('container');
 function up()
	       {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:200,height:100});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
	       }
	       
function save() {
 
    var html = ue.getContent();
	if ($("#name").val() == "") {
		alert("名称不能为空！");
		return;
	}
	if ($("#type").val() == "") {
		alert("类型不能为空！");
		return;
	}
	 document.getElementById("msg").value = html;
	document.forms[0].action = "<%=path%>/kefang/addkefang";
	document.forms[0].submit();
}
</script>