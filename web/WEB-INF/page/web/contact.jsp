<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vcher.coffee.bean.support.ImageConstants" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>兴业咖啡服务中心－联系我们</title>
    <%@ include file="base.jsp" %>
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
            <div class="box"><v:image type="<%=ImageConstants.CONTACT_LEFT_IMAGE%>" ifnull="pics/submenu5.jpg"/></div>
            <ul class="title_list">
                <li class="now_focus">联系方式</li>
                <li>留言中心</li>
            </ul>
        </div>
        <div id="contentRight" class="contact">
            <h1 class="submenu05">联系<span>我们</span></h1>

            <div class="clearfix" style="height: 14px;">
            </div>
            <ul class="con_list">
                <li class="now_focus">
                    <div class="top"></div>
                    <div class="center">
                        <p><strong>电　　话：</strong>010-67865371</p>

                        <p><strong>传　　真：</strong>010-67865372</p>

                        <p><strong>地　　址：</strong>北京经济技术开发区同济中路2号狮岛索龙大厦401室</p>

                        <p><strong>邮　　编：</strong>100176</p>

                        <p><strong>网　　址：</strong>www.incoffee.cn</p>

                        <p><strong>邮　　箱：</strong>caferica2004@gmail.com</p>
                    </div>
                    <div class="bot"></div>
                </li>
                <li>
                    <div class="top"></div>
                    <div class="center message">
                        <h1>发表留言</h1>

                        <form action="sendMail.jsp" method="post" name="contact" class="clearfix">
                            <span class="label">姓 名:</span><input name="name" class="textbox" type="text"><br>
                            <span class="label">邮 箱:</span><input name="email" class="textbox" type="text"><br>
                            <span class="label">电 话:</span><input name="tel" class="textbox" type="text"><br>
                            <span class="label">留 言:</span><textarea name="message" cols="" rows="6"
                                                                     class="textarea"></textarea><br>
                            <span class="label">&nbsp;</span><a class="btnGeneral" href="#"
                                                                onclick="javascript: contact.submit(); return false;">Submit</a>
                        </form>
                    </div>
                    <div class="bot"></div>
                </li>
            </ul>
        </div>

    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>