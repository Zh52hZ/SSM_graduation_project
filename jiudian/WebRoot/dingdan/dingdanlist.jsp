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
					<i class="layui-icon">&#xe623;</i><a href="<%=path%>/dingdan/list">订单信息管理</a>
				</blockquote>
				<div class="title_right">
				<form method="post">
						<table class="table">
							<tr>
								<td width="10%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">用户UID：</td>
								<td width="40%">
								<input type="text" class="form-control" name="uid" id="find"/>
								</td>
								<td width="50%">
								<input type="button" onclick="query();" value="查询" 
										class="layui-btn layui-btn-primary layui-btn-sm"  />
										<input id="Button2" type="button" value="刷新" class="layui-btn layui-btn-primary layui-btn-sm" onclick="javascript: location.reload()" />
								</td>
							</tr>
						</table>
					</form>
				<strong>客房订单信息管理</strong>
				</div>
				<div style="width: 1100px; margin: auto">
				<div id="PanelExcel">  
				<input id="Button1" type="button" value="Excel" class="btn btn-default btn-xs" onclick="javascript:HtmlExportToExcel('PanelExcel')" />  
        						<a id="dlink" style="display: none;"></a>
					<table class="table table-hover" id="tbHaederText">
						<caption hidden id="lbl_innum_link">客房订单信息</caption>
						<thead>
							<tr align="center">
								<th><strong>订单编号</strong></th>
								<th><strong>用户UID</strong></th>
								<th><strong>姓名</strong></th>
								<th><strong>客房类型</strong></th>
								<th><strong>预定时间</strong></th>
								<th><strong>入住时间</strong></th>
								<th><strong>离开时间</strong></th>
								<th><strong>预定金额</strong></th>
								<th><strong>订单状态</strong></th>
								<th class="s_close"><strong>操作</strong></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${dingdanList}" var="dingdan">
							<c:if test="${dingdan.type == 1}">
								<tr align="center">
									<td>${dingdan.id}</td>
									<td>${dingdan.uid}</td>
									<td>${dingdan.uname}</td>
									<td>${dingdan.name}</td>
									<td>${dingdan.time}</td>
									<td>${dingdan.rzrq}</td>
									<td>${dingdan.lkrq}</td>
								     <td>${dingdan.money} ￥</td>
								     <c:if test="${dingdan.state == '已预订'}">
								     <td style="color:#fc7676">${dingdan.state}</td>
								     </c:if>
								     <c:if test="${dingdan.state == '已取消'}">
								     <td style="color:#ccc">${dingdan.state}</td>
								     </c:if>
								     <%-- <td>${dingdan.rzrq}</td> --%>
									<td class="s_close" nowrap="nowrap"> 
									&nbsp;
									<%-- <a href="<%=path%>/dingdan/toupdatedingdan?id=${dingdan.id}"><img src="img/document_edit_24px_1129273_easyicon.net.png">编辑</a> --%>
									<a href="<%=path%>/dingdan/deletedingdan?id=${dingdan.id}"><i class="layui-icon">&#xe640;</i>删除</a>
									</td>
								</tr>
								</c:if>
							</c:forEach>
							
						</tbody>
					</table>
					</div>
				</div>
				
				<div class="title_right">
				<strong>服务订单信息管理</strong>
				</div>
				<div style="width: 1100px; margin: auto">
				<div id="PanelExcel1">  
				<input id="Button1" type="button" value="Excel" class="btn btn-default btn-xs" onclick="javascript:HtmlExportToExcel('PanelExcel1')" />  
        						<a id="dlink" style="display: none;"></a>
					<table class="table table-hover" id="tbHaederText">
					<caption hidden id="lbl_innum_link">服务订单信息</caption>
						<thead>
							<tr align="center">
								<th><strong>订单编号</strong></th>
								<th><strong>用户UID</strong></th>
								<th><strong>姓名</strong></th>
								<th><strong>下单商品</strong></th>
								<th><strong>下单时间</strong></th>
								<th><strong>下单金额</strong></th>
								<th><strong>订单状态</strong></th>
								<th class="s_close"><strong>操作</strong></th>
						</thead>
						<tbody>	 
							</tr>
							<c:forEach items="${dingdanList}" var="dingdan">
							<c:if test="${dingdan.type == 2}">
								<tr align="center">
									<td>${dingdan.id}</td>
									<td>${dingdan.uid}</td>
									<td>${dingdan.uname}</td>
									<td>${dingdan.name}</td>
									<td>${dingdan.time}</td>
								    <td>${dingdan.money} ￥</td>
								    <c:if test="${dingdan.state == '已预订'}">
								     <td style="color:#fc7676">${dingdan.state}</td>
								     </c:if>
								     <c:if test="${dingdan.state == '已取消'}">
								     <td style="color:#ccc">${dingdan.state}</td>
								     </c:if>
									<td class="s_close" nowrap="nowrap"> 
									&nbsp;
									<%-- <a href="<%=path%>/dingdan/toupdatedingdan?id=${dingdan.bid}"><img src="img/document_edit_24px_1129273_easyicon.net.png">编辑</a> --%>
									<a href="<%=path%>/dingdan/deletedingdan?id=${dingdan.id}"><i class="layui-icon">&#xe640;</i>删除</a>
									</td>
								</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 返回顶部 -->
<div class="go-top dn" id="go-top">
    <a href="javascript:;" class="uc-2vm"></a>
	<div class="uc-2vm-pop dn">
		<h2 class="title-2wm">用微信扫一扫关注诗雅客栈</h2>
		<div class="logo-2wm-box">
			<img src="http://vpoipoi.top/wp-content/uploads/2018/03/TIM图片20180309000828.jpg"  width="240" height="240">
		</div>
	</div>
    <a href="http://vpoipoi.top/?page_id=268" target="_blank" class="feedback"></a>
    <a href="javascript:;" class="go"></a>
</div>

<script>
$(function(){
	$(window).on('scroll',function(){
		var st = $(document).scrollTop();
		if( st>0 ){
			if( $('#main-container').length != 0  ){
				var w = $(window).width(),mw = $('#main-container').width();
				if( (w-mw)/2 > 70 )
					$('#go-top').css({'left':(w-mw)/2+mw+20});
				else{
					$('#go-top').css({'left':'auto'});
				}
			}
			$('#go-top').fadeIn(function(){
				$(this).removeClass('dn');
			});
		}else{
			$('#go-top').fadeOut(function(){
				$(this).addClass('dn');
			});
		}	
	});
	$('#go-top .go').on('click',function(){
		$('html,body').animate({'scrollTop':0},500);
	});

	$('#go-top .uc-2vm').hover(function(){
		$('#go-top .uc-2vm-pop').removeClass('dn');
	},function(){
		$('#go-top .uc-2vm-pop').addClass('dn');
	});
});
</script>

</body>
</html>
<script language="JavaScript">	
function query() {	
	if ($("#find").val() == "") {
		alert("请输入用户UID！");
		return;
	}	
	var action = "<%=path%>/dingdan/list";
		document.forms[0].action = action;
		document.forms[0].submit();
	}
</script>