<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String webpath = path + "/web";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Keywords" content="">
<meta name="Description" content="">
<title>诗雅客栈</title>
<style type="text/css">
/*  #imgtag{
	position:relative;
	top:-500px;
	left:10px;
	font-size:14px;
}
#imgtag1{
	position:relative;
	top:-500px;
	left:20px;
	font-size:14px;
}  */
</style>
</head>
<body background="<%=webpath%>/images/bg.jpg">
	<jsp:include flush="true" page="/web/comment/incTop.jsp"></jsp:include>
	<div class="clear"></div>
	<div class="center">
		<div class="position">
			<p>
				<span>当前位置</span><a href="<%=path %>/index/aboutus?id=1">首页</a>>><a
					href="<%=path%>/index/index">客栈客房</a>>><a href="#">${kefang.name}</a>
			</p>
		</div>
		<div class="r_part">
			<div class="room">
				<div class="new_roomgallery">
					<ul class="showgro">
						<li style="left: -576.296px; display: block;"><img style="width: 768px"
							src="<%=path%>/${kefang.pic}">
						</li>
					</ul>
				</div>

				<div class="room_description">
					
					<h3>
					<span id="imgtag" class="label label-info">${kefang.name}</span>
					<span id="imgtag1" class="label label-success"">${kefang.type}</span>
					剩余客房：<span class="badge">${kefang.num}</span>
					价格/天：<span class="badge">${kefang.money}￥</span>
					<a class="order_botton" id="curroom" onclick="subm();"> 在线预订</a>
					</h3>
					<div class="des_text">${kefang.msg}</div>
				</div>
			</div>
		</div>
		
		<!--右边区域-->
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	<jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include>

</body>
</html>

<script type="text/javascript">
function subm() {
    <c:if test="${sessionScope.currentUser==null}">
        alert("请先登录");
        return;
    </c:if>
 	 	if("${kefang.num}">0){
      			 window.location.href="<%=path%>/index/yding?id=${kefang.id}";
			} else {
		alert("非常抱歉，该客房已满");
	}
}
</script>

