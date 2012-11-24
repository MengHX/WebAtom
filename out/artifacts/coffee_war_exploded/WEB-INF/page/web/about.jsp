<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vcher.coffee.bean.support.ImageConstants" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>兴业咖啡服务中心－关于我们</title>
    <%@ include file="base.jsp"%>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".title_list>li").click(function () {
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
            <div class="box"><v:image type="<%=ImageConstants.ABOUT_LEFT_IMAGE%>" ifnull="pics/submenu2.jpg"/></div>
            <ul class="title_list">
                <li class="now_focus">公司介绍</li>
                <li>公司服务</li>
            </ul>

        </div>
        <div id="contentRight">
            <h1 class="submenu02">关于<span>我们</span></h1>

            <div class="h1-extra extra clearfix">
                <div class="h1pic"><img src="pics/t2.jpg"/></div>
                <div class="h1txt">
                    咖啡壶里煮的是沉浮，咖啡杯里盛的是梦想，而咖啡馆里氤氲飘渺的芬芳，足以包容世间的沧桑，是一处心灵靠岸的港湾。对于大多数中国人来说，咖啡是一种时尚标签。它不仅仅是一种点缀饮品，更是一种生活方式。
                </div>
            </div>
            <ul class="con_list">
                <li class="now_focus">
                    <p>兴业咖啡（茶）服务中心是隶属于极睿咖啡（北京）有限公司的专为商业用户提供产品及设备服务的机构。自2002年起已为超过1,000家商务机构，酒店餐饮或即时便利机构等单位提供商务合作。</p>

                    <p>公司针对不同需求积累了丰富的经验并不断创新，采用更加多样灵活的方式为客户提供一站式解决方案。</p>

                    <p>我们将根据您的商务类别为您提供定制的服务方案。请选择您的类别:</p>
                    <ul class="s_list">
                        <li><a target="_blank" href="office.jsp">办公及商务</a></li>
                        <li><a target="_blank" href="dining.jsp">餐饮或酒店</a></li>
                        <li><a target="_blank" href="convenience.jsp">便利店或即时服务</a></li>
                        <li><a target="_blank" href="contract.jsp">定制的合约服务</a></li>
                    </ul>
                </li>
                <li id="service">
                    <div class="service1"><img src="pics/1_01.jpg"/><span>服务项目NO1</span></div>
                    <div class="service2"><img src="pics/1_02.jpg"/><span>服务项目NO2</span></div>
                    <div class="service3"><img src="pics/1_03.jpg"/><span>服务项目NO3</span></div>
                </li>
            </ul>
        </div>

    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>