<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>header info</title>
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
	  <div class="box"><img src="pics/submenu4.jpg"></div>
				<ul class="title_list">
					<li class="now_focus">咖啡机</li>
					<li>咖啡豆</li>
				</ul>
				
	</div>
	<div id="contentRight">
  <h1 class="submenu04">产品<span>展示</span></h1>
  <div class="h3-extra extra clearfix">
   <div class="service1"><img src="pics/t4-1.jpg"/></div>
   <div class="service2"><img src="pics/t4-2.jpg"/></div>
   <div class="service3"><img src="pics/t4-3.jpg"/></div>
  </div>
	<ul class="con_list">
				<li class="now_focus ">
				<div class="list_top"></div>
				<div class="list_content">
				<ol class="productlist">
				<li>
				<span class="pImg"><a title="0000" href="#"><img src="pics/11.jpg"></a></span>
				<span class="pName">自动咖啡机</span>
				<span class="pDescription">345</span></li>
				<li>
				<span class="pImg"><a title="0000" href="#"><img src="pics/12.jpg"></a></span>
				<span class="pName">意式咖啡机</span>
				<span class="pDescription">345</span></li>
				<li>
				<span class="pImg"><a title="0000" href="#"><img src="pics/13.jpg"></a></span>
				<span class="pName">意式咖啡机 </span>
				<span class="pDescription">345</span></li>
				<li>
				<span class="pImg"><a title="0000" href="#"><img src="pics/14.jpg"></a></span>
				<span class="pName">意式咖啡机</span>
				<span class="pDescription">345</span></li>
				<li class="last">
				<span class="pImg"><a title="0000" href="#"><img src="pics/15.jpg"></a></span>
				<span class="pName">意式咖啡机</span>
				<span class="pDescription">345</span></li>
				</ol>
				</div>
				<div class="list_bot"></div>
				</li>
				<li>
				<div class="list_top"></div>
				<div class="list_content">
				<ol class="productlist2">
				<li>
				<span class="pImg"><a title="0000" href="#"><img src="pics/d1.jpg"></a></span>
				<span class="pName">咖啡豆</span>
				<span class="pDescription">345</span></li>
				<li>
				<span class="pImg"><a title="0000" href="#"><img src="pics/d2.jpg"></a></span>
				<span class="pName">咖啡豆</span>
				<span class="pDescription">345</span></li>
				<li>
				<span class="pImg"><a title="0000" href="#"><img src="pics/d3.jpg"></a></span>
				<span class="pName">咖啡豆 </span>
				<span class="pDescription">345</span></li>
				<li class="last">
				<span class="pImg"><a title="0000" href="#"><img src="pics/d4.jpg"></a></span>
				<span class="pName">咖啡豆</span>
				<span class="pDescription">345</span></li>
				</ol>
				</div>
				<div class="list_bot"></div></li>
	</ul>
</div> 
</div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>