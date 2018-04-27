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
<style>
.flexslider {
	margin: 0px auto 20px;
	position: relative;
	width: 100%;
	height: 482px;
	overflow: hidden;
	zoom: 1;
}

.flexslider .slides li {
	width: 100%;
	height: 100%;
}

.flex-direction-nav a {
	width: 70px;
	height: 70px;
	line-height: 99em;
	overflow: hidden;
	margin: -35px 0 0;
	display: block;
	background: url(<%=webpath%>/images/ad_ctr.png) no-repeat;
	position: absolute;
	top: 50%;
	z-index: 10;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
	-webkit-transition: all .3s ease;
	border-radius: 35px;
}

.flex-direction-nav .flex-next {
	background-position: 0 -70px;
	right: 0;
}

.flex-direction-nav .flex-prev {
	left: 0;
}

.flexslider:hover .flex-next {
	opacity: 0.8;
	filter: alpha(opacity=25);
}

.flexslider:hover .flex-prev {
	opacity: 0.8;
	filter: alpha(opacity=25);
}

.flexslider:hover .flex-next:hover,
.flexslider:hover .flex-prev:hover {
	opacity: 1;
	filter: alpha(opacity=50);
}

.flex-control-nav {
	width: 100%;
	position: absolute;
	bottom: 10px;
	text-align: center;
}

.flex-control-nav li {
	margin: 0 2px;
	display: inline-block;
	zoom: 1;
	*display: inline;
}

.flex-control-paging li a {
	background: url(<%=webpath%>/images/dot.png) no-repeat 0 -16px;
	display: block;
	height: 16px;
	overflow: hidden;
	text-indent: -99em;
	width: 16px;
	cursor: pointer;
}

.flex-control-paging li a.flex-active,
.flex-control-paging li.active a {
	background-position: 0 0;
}

.flexslider .slides a img {
	width: 100%;
	height: 482px;
	display: block;
}
</style>
<title>诗雅客栈</title>
</head>
<body background="<%=webpath%>/images/bg.jpg">
	<jsp:include flush="true" page="/web/comment/incTop.jsp"></jsp:include>
	<!-- 轮播图  START -->
	<div id="banner_tabs" class="flexslider">
		<ul class="slides">
			<li>
				<a title="" target="_blank" href="#">
					<img width="1920" height="482" alt="" style="background: url(<%=webpath%>/images/banner1.png) no-repeat center;" src="<%=webpath%>/images/alpha.png">
				</a>
			</li>
			<li>
				<a title="" href="#">
					<img width="1920" height="482" alt="" style="background: url(<%=webpath%>/images/banner2.png) no-repeat center;" src="<%=webpath%>/images/alpha.png">
				</a>
			</li>
			<li>
				<a title="" href="#">
					<img width="1920" height="482" alt="" style="background: url(<%=webpath%>/images/banner3.png) no-repeat center;" src="<%=webpath%>/images/alpha.png">
				</a>
			</li>
		</ul>
		<ul class="flex-direction-nav">
			<li><a class="flex-prev" href="javascript:;">Previous</a></li>
			<li><a class="flex-next" href="javascript:;">Next</a></li>
		</ul>
		<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
			<li><a>1</a></li>
			<li><a>2</a></li>
			<li><a>2</a></li>
		</ol>
	</div>
<script src="<%=webpath%>/js/slider.js"></script>
<script type="text/javascript">
$(function() {
	var bannerSlider = new Slider($('#banner_tabs'), {
		time: 5000,
		delay: 400,
		event: 'hover',
		auto: true,
		mode: 'fade',
		controller: $('#bannerCtrl'),
		activeControllerCls: 'active'
	});
	$('#banner_tabs .flex-prev').click(function() {
		bannerSlider.prev()
	});
	$('#banner_tabs .flex-next').click(function() {
		bannerSlider.next()
	});
})
</script>
<!-- 轮播图 END  -->	
	<div class="center">
		<div class="position">
			<p>
				<span>当前位置</span><a href="#">首页</a>>><a href="#">关于诗雅</a>>>
				<a href="#">客栈介绍</a>
			</p>
		</div>
		<div class="cat_theme">
			<p>
				<span></span>客栈介绍<em></em>
			</p>
		</div>
		<div class="web">
			<div style="text-align:center;min-height:100px;margin: 10px;padding: 10px">
				${jiudian.msg}</div>
		</div>
		<div class="clear"></div>
		<!-- DPlayer HTML5播放器 -->
		<div id="dplayer"></div>
	</div>
	<div class="clear"></div>
	<jsp:include flush="true" page="/web/comment/incFoot.jsp"></jsp:include>
</body>

<!-- DPlayer HTML5播放器  -->
<script type="text/javascript">
	var dp = new DPlayer({
    container: document.getElementById('dplayer'),
    autoplay: false,
    theme: '#FADFA3',
    loop: true,
    lang: 'zh-cn',
    screenshot: true,
    hotkey: true,
    preload: 'auto',
    logo: '<%=webpath%>/images/TVlogo.png', 
    volume: 0.7,
    mutex: true,
    video: {
        url: '<%=webpath%>/video/Av10601347,P1.MP4',
        pic: '<%=webpath%>/images/timg.jpg',
        thumbnails: 'thumbnails.jpg',
        type: 'auto'
    },
    subtitle: {
        url: 'dplayer.vtt',
        type: 'webvtt',
        fontSize: '25px',
        bottom: '10%',
        color: '#b7daff'
    },
    danmaku: {
        id: '9E2E3368B56CDBB4',
        api: 'https://api.prprpr.me/dplayer/',
        token: 'tokendemo',
        maximum: 1000,
        addition: ['https://api.prprpr.me/dplayer/bilibili?aid=4157142'],
        user: 'DIYgod',
        bottom: '15%',
        unlimited: true
    }
});
</script>

</html>