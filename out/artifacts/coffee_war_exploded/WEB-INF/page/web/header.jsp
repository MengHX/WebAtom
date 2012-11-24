<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="v" uri="vcher-admin-taglib" %>
<%@ page import="com.vcher.coffee.bean.support.ImageConstants" %>
<div class="header ">
    <div class="hpic"><v:image type="<%=ImageConstants.FRONT_LOGO_LEFT%>" ifnull="pics/header-bg.gif"/></div>
    <div class="header_link clearfix"><a class="last"href="contact.do">联系我们</a><a href="about.do">关于我们</a></div>
    <div class="headercontent clearfix">
        <div id="logo"><a href="index.do"><v:image type="<%=ImageConstants.LOGO_IMAGE%>" ifnull="pics/logo.gif"/></a></div>
        <ul id="nav">
            <li id="tab1"><a href="index.do"  class="btn"><span><span>首页</span></span></a></li>
            <li id="tab2"><a href="office.do" class="btn"><span><span>办公室咖啡</span></span></a> </li>
            <li id="tab3"><a href="dining.do" class="btn"><span><span>餐饮酒店</span></span></a> </li>
            <li id="tab4"><a href="convenience.do" class="btn "><span><span>便利服务</span></span></a></li>
            <li id="tab5"><a href="contract.do" class="btn"><span><span>合约服务</span></span></a></li></ul>
    </div>
</div>