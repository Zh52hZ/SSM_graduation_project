<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String webpath = path + "/web";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="<%=path%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="<%=webpath%>/css/main.css">
<link href="<%=webpath%>/css/WdatePicker.css" rel="stylesheet"
	type="text/css">
<link type="text/css" rel="stylesheet"
	href="<%=webpath%>/css/slideshow.css">
<link type="text/css" rel="stylesheet"
	href="<%=webpath%>/css/DPlayer.min.css">
<link type="text/css" rel="stylesheet"
	href="<%=webpath%>/css/zzsc.css">
<script type="text/javascript" src="<%=webpath%>/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="<%=webpath%>/js/jquery.SuperSlide.2.1.2.js"></script>
<script type="text/javascript"
	src="<%=webpath%>/js/jquery.easing.1.3.js"></script>
<script type="text/javascript"
	src="<%=path%>/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="<%=webpath%>/js/menu.js"></script>
<script type="text/javascript" src="<%=webpath%>/js/DPlayer.min.js"></script>

<style>
img {
	border: 0px;
}

h1,h2,h3,h4,h5,h6 {
	margin: 0;
	padding: 0;
	color: black;
	font-family: "Microsoft YaHei", Arial, Helvetica, sans-serif, "微软雅黑";
}

input,textarea,select {
	padding: 2px;
	vertical-align: middle;
}

.cls {
	clear: both;
}

.notxt {
	text-indent: -9999px;
}

.nav-box ul li a {
	color: #333;
	text-decoration: none;
	font-size: 15px
}

.nav-box ul li a:hover {
	color: #24adea;
	font-size: 15px
}

i {
	font-style: normal;
}

.nav-box {
	width: 980px;
	margin: 0 auto;
	position: relative;
	font-size: 16px 微软雅黑;
}

.nav-box ul li {
	float: left;
	padding: 0 35px;
	text-align: center;
	height: 47px;
	line-height: 47px;
	position: relative;
}

.curBg {
	background: #24adea;
	height: 3px;
	position: absolute;
	bottom: 0;
	width: 68px;
	left: 0px;
}

.nav-box li span.active {
	height: 15px;
	line-height: 0px;
	font-size: 0px;
	width: 0px;
	position: absolute;
	bottom: 15px;
	right: 0px;
}
</style>
</head>




<div id="myhead" style="width: 100%; text-align: center">


	<div class="top_wrap">
		<div class="top">
			<a href="#" class="logo" title="欢迎来到诗雅客栈官方网站"></a>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			jQuery(".fullSlide").slide({
				titCell : ".hd ul",
				mainCell : ".bd ul",
				effect : "leftLoop",
				vis : "auto",
				autoPlay : true,
				autoPage : true,
				trigger : "click"
			});
		});
	</script>
	<style type="text/css">
* {
	zoom: 1
}

.fullSlide {
	position: relative;
	background: #000;
	margin: 0 auto;
}

.fullSlide .bd {
	position: relative;
	z-index: 0;
}

.fullSlide .bd li img {
	width: 100%;
	vertical-align: top;
	min-height: 360px
}

.fullSlide .hd {
	position: relative;
	z-index: 1;
	margin-top: -30px;
	height: 30px;
	line-height: 30px;
	text-align: center;
	background: #d8d8d8;
	filter: alpha(opacity =             60);
	opacity: 0.6
}

.fullSlide .hd ul {
	text-align: center;
	padding-top: 5px;
}

.fullSlide .hd ul li {
	cursor: pointer;
	display: inline-block; *
	display: inline;
	zoom: 1;
	width: 8px;
	height: 8px;
	margin: 5px;
	background: url(<%=webpath%>/images/tg_flash_p.png) 0 0;
	overflow: hidden;
	font-size: 0;
	z-index: 2;
}

.fullSlide .hd ul .on {
	background-position: -18px 0;
}

.fullSlide .prev,.fullSlide .next {
	z-index: 1;
	cursor: pointer;
	display: block;
	width: 55px;
	height: 55px;
	position: relative;
	top: -160px;
	margin: -28px 0 0 3%;
	float: left;
	background: url(<%=webpath%>/images/arrow.png) 0 0 no-repeat;
	filter: alpha(opacity =             40);
	opacity: 0.4
}

.fullSlide .next {
	background-position: right 0;
	float: right;
	margin-right: 3%
}

.fullSlide .prev:hover,.fullSlide .next:hover {
	filter: alpha(opacity =             80);
	opacity: 0.8
}

.num {
	
}
</style>
	
		<div class="menu">
			<ul>
				<!--li class="border_none">
						<a href="#">首页</a>
					</li-->
				<li><a href="<%=path%>/index/aboutus?id=1"><p>关于诗雅</p></a>
				</li>
				<li><a href="<%=path%>/index/index"><p>客栈客房</p></a>
				</li>
				<li><a href="<%=path%>/index/fwlist"><p>其他服务</p></a>
				</li>
				<li><a href="<%=path%>/index/hdlist"><p>优惠活动</p></a>
				</li>
				<li><a href="<%=path%>/index/tslist"><p>留言</p></a>
				</li>

				<ul style="float:right;position: fixed;top: 10px;right: 7px;">
					<c:if test="${sessionScope.currentUser==null}">
						<a href="<%=webpath%>/login.jsp">登录</a>|
						<a href="<%=webpath%>/register.jsp">注册</a>
					</c:if>
					<c:if test="${sessionScope.currentUser!=null}">
						<span style="color:#fff">登录用户:</span>
						<a href="<%=webpath%>/userinfo.jsp">${sessionScope.currentUser.username}</a>|
							<a href="<%=path%>/index/myorder">我的订单</a>| 
							<a href="javascript:;" onclick="show_confirm()">退出</a>
					</c:if>
				</ul>

			</ul>
		</div>
	
</div>
<script type="text/javascript">
	function show_confirm()
	{
	var r=confirm("您确认退出吗？");
	if (r==true)
 	 {
  		window.location="<%=path%>/index/userloginout";
  	}
}
</script>
<!-- 返回顶部 -->
<div class="go-top dn" id="go-top">
    <a href="javascript:;" class="uc-2vm"></a>
	<div class="uc-2vm-pop dn">
		<h2 class="title-2wm">用微信扫一扫关注诗雅客栈</h2>
		<div class="logo-2wm-box">
			<img src="http://vpoipoi.top/wp-content/uploads/2018/03/TIM图片20180309000828.jpg"  width="240" height="240">
		</div>
	</div>
    <a href="http://vpoipoi.top/" target="_blank" class="feedback"></a>
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
</html>
