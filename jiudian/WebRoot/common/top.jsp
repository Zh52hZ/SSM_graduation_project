<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<div class="header">
	<div class="logo">
		<img src="images/logo.png" />
	</div>

	<div class="header-right" style="background-color: #263238">
			<a href="javascript:viod(0)">${username
			}(${sessionScope.user.utype})</a>
			<a href="javascript:;" data-toggle="tooltip" onclick="show_confirm()" data-placement="bottom" title="确定注销就点我" >注销</a>
	</div>
	<script type="text/javascript">
	function show_confirm()
	{
	var r=confirm("您确认要退出诗雅客栈后台管理系统吗？");
	if (r==true)
 	 {
  		window.location="<%=path%>/index/loginout";
  	}
}
</script>
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