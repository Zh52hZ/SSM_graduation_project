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
 
</head>
<body background="<%=webpath%>/images/bg.jpg">
   <jsp:include flush="true" page="/web/comment/incTop.jsp"></jsp:include> 


 <div class="clear"></div>
<div class="center"> 
    <div class="position">
      <p><span>当前位置</span><a href="<%=path %>/index/aboutus?id=1">首页</a>>><a href="<%=path%>/index/fwlist" class="cur">其他服务</a>
    </div>
   <div class="r_part"> 
    <div class="room">
      <div class="new_roomgallery">
        <ul class="showgro">
                 <li style="display: block;"><img  width=768px height=auto alt="" src="<%=path%>/${fuwu.pic}"></li>
         </ul>
        <div class="grollbtn groll_prev"><span style="display: none;"></span></div>
        <div class="grollbtn groll_next"><span style="display: none;"></span></div>
      	</div>
      
      <div class="room_description">
        <h3>${fuwu.name}
       	 &#8194;&#8194;&#8194;价格：<span class="badge">${fuwu.money} ￥</span>
       	 &#8194;&#8194;&#8194;剩余数量：<span class="badge">${fuwu.num}</span>
        <a class="order_botton" id="curroom" href="#" onclick="submitorder();";>在线预订</a>
        </h3>
        <div class="des_text">
                 ${fuwu.msg}
        </div>
      </div>
  </div>
  </div>
  <!--右边区域-->
  <div class="clear"></div>
</div>
<div class="clear"></div>
   <jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include> 
 </body></html>
 
 <script type="text/javascript">
function submitorder() {
    <c:if test="${sessionScope.currentUser==null}">
        alert("请先登录");
        return;
    </c:if>
    if("${fuwu.num}">0){
      			 window.location.href="<%=path%>/index/fuwuyding?id=${fuwu.id}";
			} else {
		alert("非常抱歉，该客房已满");
    
}
}
</script>
 
 