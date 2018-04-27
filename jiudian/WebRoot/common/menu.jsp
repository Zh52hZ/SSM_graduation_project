<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="css/nav.css">
<link rel="stylesheet" type="text/css" href="font/iconfont.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/nav.js"></script>
<div class="left">
	<script type="text/javascript">
		var myMenu;
		window.onload = function() {
			myMenu = new SDMenu("my_menu");
			myMenu.init();
		};
	</script>

	<div id="my_menu" class="nav">
	    <div class="nav-top">
		<div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="images/mini.png" ></div>
	</div>
	<ul>
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>用户信息管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="loginuser/list"><span>用户信息管理</span></a></li>				
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>订单信息管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="dingdan/list"><span>订单信息管理</span></a></li>
			
			</ul>
		</li>
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>用户留言管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="tousu/list"><span>用户留言管理</span></a></li>				
			</ul>
		</li>
		<c:if test="${sessionScope.user.utype=='超级管理员'}">
		
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_4"></i><span>网站首页管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="jd/toupdatejiudian?id=1"><span>网站首页管理</span></a></li>				
			</ul>
		</li>
		
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>管理员信息管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="user/list"><span>管理员信息管理</span></a></li>	
			</ul>
		</li>
		
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_6"></i><span>客房信息管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="kefang/list"><span>客房信息管理</span></a></li>	
			</ul>
		</li>
		
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_7"></i><span>服务信息管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="fuwu/list"><span>服务信息管理</span></a></li>	
			</ul>
		</li>
		
		<li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_8"></i><span>活动信息管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="huodong/list"><span>活动信息管理</span></a></li>	
			</ul>
		</li>
	</ul>
			</c:if>
	</div>

</div>
<div class="Switch"></div>
<script type="text/javascript">
	$(document).ready(function(e) {
		$(".Switch").click(function() {
			$(".left").toggle();

		});
	});
</script>
