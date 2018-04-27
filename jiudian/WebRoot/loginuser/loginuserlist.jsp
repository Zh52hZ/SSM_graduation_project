<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/header.jsp"%>
<base href="<%=basePath%>">
 <script language="javascript" type="text/javascript">  
        function PrintDoc() {  
            $(".s_close").remove();  
            window.print();  
        }  
  
        function ReTabColumn(_this) {  
            $("#tdheji").attr("colspan", parseInt($("#tdheji").attr("colspan") - 1));  
            TabColRemove(_this, false);  
        }  
  
        //jQuery移除Table列,isDellast：false最后一行不受影响；true最后一行受影响  
        //<th>标题<span class="s_close" style='color: Red; cursor: pointer' onclick='ReTabColumn(this)' title='隐藏当前列'>×</span></th>  
        function TabColRemove(_this, isDellast) {  
            if (isDellast) {  
                $(_this).parent().parent().parent().find("tr td:nth-child(" + ($(_this).parent().index() + 1) + ")").remove();  
            } else {  
                $(_this).parent().parent().parent().find("tr:not(:last-child)").find("td:nth-child(" + ($(_this).parent().index() + 1) + ")").remove();  
            }  
        }  
  
        //jQuery HTML导出Excel文件(兼容IE及所有浏览器)  
        function HtmlExportToExcel(tableid) {  
            $(".s_close").remove();  
            var filename = $('#lbl_innum_link').text();  
            if (getExplorer() == 'ie' || getExplorer() == undefined) {  
                HtmlExportToExcelForIE(tableid, filename);  
            }  
            else {  
                HtmlExportToExcelForEntire(tableid, filename)  
            }  
        }  
        //IE浏览器导出Excel  
        function HtmlExportToExcelForIE(tableid, filename) {  
            try {  
                var winname = window.open('', '_blank', 'top=10000');  
                var strHTML = document.getElementById(tableid).innerHTML;  
  
                winname.document.open('application/vnd.ms-excel', 'export excel');  
                winname.document.writeln(strHTML);  
                winname.document.execCommand('saveas', '', filename + '.xls');  
                winname.close();  
  
            } catch (e) {  
                alert(e.description);  
            }  
        }  
        //非IE浏览器导出Excel  
        var HtmlExportToExcelForEntire = (function() {  
            var uri = 'data:application/vnd.ms-excel;base64,',  
        template = '<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>',  
        base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) },  
        format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }  
            return function(table, name) {  
                if (!table.nodeType) { table = document.getElementById(table); }  
                var ctx = { worksheet: name || 'Worksheet', table: table.innerHTML }  
                document.getElementById("dlink").href = uri + base64(format(template, ctx));  
                document.getElementById("dlink").download = name + ".xls";  
                document.getElementById("dlink").click();  
            }  
        })()  
        function getExplorer() {  
            var explorer = window.navigator.userAgent;  
            //ie   
            if (explorer.indexOf("MSIE") >= 0) {  
                return 'ie';  
            }  
            //firefox   
            else if (explorer.indexOf("Firefox") >= 0) {  
                return 'Firefox';  
            }  
            //Chrome  
            else if (explorer.indexOf("Chrome") >= 0) {  
                return 'Chrome';  
            }  
            //Opera  
            else if (explorer.indexOf("Opera") >= 0) {  
                return 'Opera';  
            }  
            //Safari  
            else if (explorer.indexOf("Safari") >= 0) {  
                return 'Safari';  
            }  
        }  
    </script>  
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
					 
					<strong>会员信息管理</strong>
				</div>
				<div style="width: 1100px; margin: auto">
					<form method="post">
						<table class="table">
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">用户名：</td>
								<td width="40%">
								<input type="text" class="form-control" name="username" />
								</td>
								<td width="50%">
								<input type="button" onclick="query();" value="查询" class="layui-btn layui-btn-primary layui-btn-sm" />
								<a class="layui-btn layui-btn-primary layui-btn-sm" id="modal-9735581" href="<%=path%>/loginuser/loginuseradd.jsp" role="button">添加</a>
								<input type="button" value="打印" onclick="PrintDoc()" class="layui-btn layui-btn-primary layui-btn-sm" />  
       							<input id="Button1" type="button" value="导出Excel" class="layui-btn layui-btn-primary layui-btn-sm" onclick="javascript:HtmlExportToExcel('PanelExcel')" />  
        						<input id="Button2" type="button" value="刷新" class="layui-btn layui-btn-primary layui-btn-sm" onclick="javascript: location.reload()" /> 
        						<a id="dlink" style="display: none;"></a>
								</td>
							</tr>
						</table>
					</form>
    				<div id="PanelExcel">  
					<table class="table table-hover"  id="tbHaederText" >
					<caption hidden id="lbl_innum_link">会员信息</caption>
						<thead>
							<tr align="center">
								<th><strong>ID</strong></th>
								<th><strong>用户名</strong></th>
								<!-- <th><strong>密码</strong></th> -->
								<th><strong>姓名</strong></th>
								<th><strong>联系电话</strong></th>
								<th><strong>邮箱</strong></th>
								<th class="s_close"><strong>操作</strong></th>
							</tr>
						<thead>
						<tbody>
							<c:forEach items="${loginuserList}" var="loginuser">
								<tr align="center">
									<td>${loginuser.id}</td>
									<td>${loginuser.username}</td>
									<%-- <td>${loginuser.pwd}</td> --%>
									<td>${loginuser.name}</td>
									<td>${loginuser.telphone}</td>
									<td>${loginuser.email}</td>
									<td class="s_close">
									<a href="<%=path%>/loginuser/toupdateloginuser?id=${loginuser.id}"><i class="layui-icon">&#xe642;</i>编辑</a>&nbsp;|&nbsp;
									<a href="<%=path%>/loginuser/deleteloginuser?id=${loginuser.id}"><i class="layui-icon">&#xe640;</i>删除</a></td>
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
	var action = "<%=path%>/loginuser/list";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
<%-- function del(){
var r = confirm("确定删除该用户吗？");
	if(r==true){
		alert("删除成功！");
	}else{
		location.href="<%=path%>/loginuser/list";
	}
} --%>
</script>