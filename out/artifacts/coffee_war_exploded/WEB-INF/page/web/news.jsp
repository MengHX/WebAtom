<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>兴业咖啡服务中心－资讯中心</title>
<jsp:include page="base.jsp"/>
<script type="text/javascript">
$(document).ready(function() {
	$(".title_list>li").click(function() {
		$(this).addClass("now_focus");
		$(this).siblings().removeClass("now_focus");
		var $dangqian = $(".con_list>li").eq($(".title_list>li").index(this));
		$dangqian.addClass("now_focus");
		$dangqian.siblings().removeClass("now_focus");
	});
});
</script>
</head>
<body>
<div id="wrapper1">
<jsp:include page="header.jsp"/>
<div id="content">
<div id="contentLeft">
  <div class="box"><img src="pics/submenu3.jpg"></div>
			<ul class="title_list">
				<li class="now_focus">公司新闻</li>
				<li>咖啡新闻</li>
			</ul>
</div>
<div id="contentRight">
  <h1 class="submenu03">新闻<span>动态</span></h1>
  <div class="h2-extra extra clearfix">
   <div class="h2txt">民以食为天，人活着，就得吃东西。但只有合理科学的膳食，才能促进健康(健康食品)。反之，饮食不当，则会给身体造成伤害。因此，营养学家告诫广大消费者，咖啡＋牛奶＝有害健康</div>
  </div>
	<ul class="con_list">
				<li class="now_focus">
				<div class="news_title clearfix"><span class="news_no">序号</span><span class="tlong">标题</span><span class="news_date">日期</span><span class="news_hit">浏览次数</span></div>
				<ol>
				<li>
				<span>01</span>
				<span class="news-content"><a title="0000" href="#">0000000000000000</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li>
				<li>
				<span>02</span>
				<span class="news-content"><a title="0000" href="#">0000</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li>
				<li>
				<span>03</span>
				<span class="news-content"><a title="0000" href="#">0000</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li>
				<li>
				<span>04</span>
				<span class="news-content"><a title="0000" href="#">0000</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li>
				<li>
				<span>05</span>
				<span class="news-content"><a title="0000" href="#">0000</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li></ol>
				<div class="pager_bar"><span class="pre">上一页</span><span class="pageNum">1  2  3  4  5</span><span class="next">下一页</span></div>
				</li>
				<li>
				<div class="news_title clearfix"><span class="news_no">序号</span><span class="tlong">标题</span><span class="news_date">日期</span><span class="news_hit">浏览次数</span></div>
				<ol>
				<li>
				<span>01</span>
				<span class="news-content"><a title="0000" href="#">咖啡的由来</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li>
				<li>
				<span>02</span>
				<span class="news-content"><a title="0000" href="#">咖啡物语</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li>
				<li>
				<span>03</span>
				<span class="news-content"><a title="0000" href="#">咖啡历史</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li>
				<li>
				<span>04</span>
				<span class="news-content"><a title="0000" href="#">0000</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li>
				<li>
				<span>05</span>
				<span class="news-content"><a title="0000" href="#">0000</a></span>
				<span class="news-time"> [ 11-03-02 ] </span>
				<span class="news-hit">345</span></li>
				</ol>
				<div class="pager_bar"><span class="pre">上一页</span><span class="pageNum">1  2  3  4  5</span><span class="next">下一页</span></div>
				</li>
	</ul>
</div> 
 
</div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>