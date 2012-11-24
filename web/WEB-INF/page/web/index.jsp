<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vcher.coffee.bean.support.ImageConstants" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>兴业咖啡服务中心</title>
<%@ include file="base.jsp"%>
</head>
<body>
<div id="wrapper1" class="clearfix">
<jsp:include page="header.jsp"/>
<div id="content">
<div class="Txtleft">
		<div id="flash">
		<div id="slider">
				<ul>
				<li><a href="office.do" target="_blank"><v:image type="<%=ImageConstants.FRONT_FIRST_IMAGE%>" ifnull="pics/slide1.jpg"/></a></li>
				<li><a href="dining.do" target="_blank"><v:image type="<%=ImageConstants.FRONT_SECOND_IMAGE%>" ifnull="pics/slide2.jpg"/></a></li>
				<li><a href="convenience.do" target="_blank"><v:image type="<%=ImageConstants.FRONT_THIRD_IMAGE%>" ifnull="pics/slide3.jpg"/></a></li>
				<li><a href="contract.do" target="_blank"><v:image type="<%=ImageConstants.FRONT_FOURTH_IMAGE%>" ifnull="pics/slide4.jpg"/></a></li>
				</ul>
		</div> 
		</div>
		<div class="homeBox1 health clearfix">
		<div><v:image type="<%=ImageConstants.FRONT_CORNER_IMAGE%>" ifnull="pics/health.jpg"/></div>
		<div>
		<h1>咖啡与健康</h1>
		<div class="info">美国研究 咖啡可降低患皮肤癌危险美国研究咖啡可降低患皮肤癌危险美国研究 咖啡可降低患皮肤癌危险美国研究 咖啡可降低患皮肤癌危险</div>
		</div>
		</div>
		<div class="homeBox1 service">
		<h1>选择您的服务类别：</h1>
		<ul class="serviceslist">
		<li class="odd"><a target="_blank" href="office.do">01<span > 办公及商务</span></a></li>
		<li><a target="_blank" href="dining.do">02<span > 餐饮或酒店</span></a></li>
		<li class="odd"><a target="_blank" href="convenience.do">03<span > 便利店或即时服务</span></a></li>
		<li><a target="_blank" href="contract.do">04<span > 定制的合约服务</span></a></li>
		</ul>
		</div>
</div>
    <div class="Txtright">
		<div class="homeBox about clearfix">
		<h1>关于我们</h1><div class="h1Pic"></div>
		<div class="content">
		<p>兴业咖啡（茶）服务中心是隶属于极睿咖啡（北京）有限公司的专为商业用户提供产品及设备服务的机构...</p>
		<p><v:image type="<%=ImageConstants.FRONT_ABOUT_IMAGE%>" ifnull="pics/index_about.jpg"/></p>
		</div>
		<a href="about.do" target="_blank" class="more">更多..</a>
		</div>
		<div class="homeBox news clearfix">
		<h1>热门资讯</h1>
		<div class="h1Pic"></div>
		<ul class="newslist">		
		<li><a target="_blank" href="news.do"><span class="news-content"> 一杯靓咖啡是如何诞生的？(图)</span></a></li>
		<li><a target="_blank" href="news.do"><span class="news-content">饮用咖啡的一些小规矩</span></a></li>
		<li><a target="_blank" href="news.do"><span class="news-content">你对咖啡机了解有多少</span></a></li>
		</ul>
		<a class="more" href="news.do">更多..</a></div>
		 <div class="homeBox contact clearfix">
		 <div class="link">
		  <a class="link_one" href="#">在线咨询</a>
		  <a class="link_two" href="contact.do">留言中心</a>
		  </div>
		  <img src="pics/index_contact.jpg"/>
		  </div>
  </div>
</div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>