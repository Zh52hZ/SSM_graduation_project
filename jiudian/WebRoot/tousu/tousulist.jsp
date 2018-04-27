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
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/tousu/list">用户留言管理</a>
				</blockquote>

				<div class="title_right">
					 <form method="post">
						<table class="table">
							<tr>
								<td width="10%" align="center" nowrap="nowrap" bgcolor="#f1f1f1">用户姓名：</td>
							<td width="40%"><input type="text" class="form-control" name="tsperson" /></td>
							<td width="50%">
								<input type="button" onclick="query();" value="查询"
									class="layui-btn layui-btn-primary layui-btn-sm" />
							<input type="button" value="打印" onclick="PrintDoc()" class="layui-btn layui-btn-primary layui-btn-sm" />  
       							<input id="Button1" type="button" value="导出Excel" class="layui-btn layui-btn-primary layui-btn-sm" onclick="javascript:HtmlExportToExcel('PanelExcel')" />  
        						<input id="Button2" type="button" value="刷新" class="layui-btn layui-btn-primary layui-btn-sm" onclick="javascript: location.reload()" />  
        						<a id="dlink" style="display: none;"></a>
							</tr>
							
						</table>
					</form>
					 
					 
					<strong>用户留言管理</strong>
				</div>
				<div style="width: 1100px; margin: auto">
					<div id="PanelExcel">  
					<table class="table table-hover" style="table-layout:fixed" id="tbHaederText">
						<caption hidden id="lbl_innum_link">用户留言信息</caption>
						<thead>
							<tr style="text-align: center">
								<th width="5%"><strong>ID</strong></th>
								<th width="10%"><strong>用户</strong></th>
								<th width="20%"><strong>留言时间</strong></th>
								<th width="25%"><strong>回复</strong></th>
								<th width="20%"><strong>回复时间</strong></th>
								<th class="s_close" width="20%"><strong>操作</strong></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${tousuList}" var="tousu">
								<tr align="center">
									<td>${tousu.id}</td>
									<td>${tousu.tsperson}</td>
								    <td>${tousu.tstime}</td>
								    <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${tousu.replay}</td>
								     <td>${tousu.replaytime}</td>
									<td class="s_close" nowrap="nowrap">
									<a href="<%=path%>/tousu/toupdatetousu?id=${tousu.id}"><i class="layui-icon">&#xe63a;</i>回复</a>&nbsp;|&nbsp;
									<a href="<%=path%>/tousu/deletetousu?id=${tousu.id}"><i class="layui-icon">&#xe640;</i>删除</a>
									</td>
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
	var action = "<%=path%>/tousu/list";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
</script>