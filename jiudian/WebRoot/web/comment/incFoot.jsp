<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String webpath = path + "/web";
%>
<div class="footer_wrap">
	<div class="footer">
		<div class="l_foot">
			<p style="height:36px;">
				<span>诗雅客栈预订热线      :  0000-0000000</span>
				<span>所用到的开源插件:   
					  <a href="http://dplayer.js.org/#/zh-Hans/" target="_blank" >DPlayer HTML5弹幕播放器插件</a>
					| <a href="http://fex.baidu.com/ueditor/" target="_blank" >UEditor富文本web编辑器</a>
					| <a href="http://www.my97.net/demo/index.htm" target="_blank" >My97日期控制插件</a>
				</span>
			</p>
		</div>
		<div class="r_foot">
			<div class="clear"></div>
			<div class="config">
				Copyright © 2017-2018 诗雅客栈 ShiYa.com All Rights Reserved.版权所有：<a href="http://www.vpoipoi.top" target="_blank" data-toggle="tooltip" data-placement="right" title="我的博客" class="my-face">北方柿子</a> <br> 
				后台管理：<a href="<%=path%>/login.jsp" target="_blank" >后台登录</a>
			</div>
		</div>
		<div class="clear"></div>
	</div>

</div>
<script>
	$(function () { $("[data-toggle='tooltip']").tooltip(); });
</script>

<style>
.a_qq {
	font: normal 18px 'microsoft yahei';
	color: #fff;
}

.a_qq:hover {
	color: #f00;
}

.l_foot dl {
	padding-top: 16px;
}

.links {
	padding: 10px 0;
}
</style>