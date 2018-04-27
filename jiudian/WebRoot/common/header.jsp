<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<title>诗雅客栈预订管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=path %>/css/bootstrap.css" />
<link rel="stylesheet" href="<%=path %>/css/bootstrap-table.css" />
<link rel="stylesheet" href="<%=path %>/css/css.css" />
  <link rel="stylesheet" href="<%=path %>/css/layui.css">
<script type="text/javascript" src="<%=path %>/js/jquery1.9.0.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/sdmenu.js"></script>
<script type="text/javascript" src="<%=path %>/js/laydate/laydate.js"></script>
<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
<script type="text/javascript" src="<%=path %>/js/layui.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path%>/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=path%>/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="<%=path%>/lang/zh-cn/zh-cn.js"></script>
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

