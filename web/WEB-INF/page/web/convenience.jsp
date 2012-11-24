<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vcher.coffee.bean.support.ImageConstants" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>兴业咖啡服务中心－便利服务</title>
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
<div id="wrapper1" class="clearfix">
    <jsp:include page="header.jsp"/>
    <div id="content">
        <div id="contentLeft">
            <div class="box"><v:image type="<%=ImageConstants.CONVENIENCE_LEFT_IMAGE%>"
                                      ifnull="pics/submenu4.jpg"/></div>
            <ul class="title_list" id="menu_one">
                <li id="first" class="now_focus">&nbsp;</li>
                <li class="odd"><a>01<span> 咖啡产品及辅充产品</span></a></li>
                <li><a>02<span>茶及其他热饮</span></a></li>
                <li class="odd"><a>03<span>咖啡设备</span></a></li>
                <li><a>04<span>维护及服务</span></a></li>
                <li class="odd"><a>05<span>培训服务</span></a></li>
            </ul>

        </div>
        <div id="contentRight">
            <h1 class="submenu04">便利<span>服务</span></h1>

            <div class="h3-extra extra clearfix">
                <div class="service1"><v:image type="<%=ImageConstants.CONVENIENCE_FIRST_IMAGE%>"
                                               ifnull="pics/t4-1.jpg"/></div>
                <div class="service2"><v:image type="<%=ImageConstants.CONVENIENCE_SECOND_IMAGE%>"
                                               ifnull="pics/t4-2.jpg"/></div>
                <div class="service3"><v:image type="<%=ImageConstants.CONVENIENCE_THIRD_IMAGE%>"
                                               ifnull="pics/t4-3.jpg"/></div>
            </div>
            <ul class="con_list">
                <li class="now_focus">
                    市场同业的存在使得竞争加剧，与其压缩利润空间不如满足消费者多样化需求。即便是在便利店或加油站这样的瞬间消费场所，您也可以通过提供优质的咖啡热饮产品，提升您的服务，创造价值。联络我们，为您提供丰俭宜人的解决方案。
                </li>
                <li>
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
                    <div class="list_bot"></div>
                </li>
                <li>
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
                    <div class="top">&nbsp;</div>
                    <div class="center">
                        <dl>
                            <dt>服务项目1</dt>
                            <dd> 大部分公司员工乐于接受在办公室提供新鲜优质的咖啡饮品</dd>
                            <dt>服务项目2</dt>
                            <dd>大部分公司员工乐于接受在办公室提供新鲜优质的咖啡饮品</dd>
                            <dt>服务项目3</dt>
                            <dd>大部分公司员工乐于接受在办公室提供新鲜优质的咖啡饮品</dd>
                        </dl>
                    </div>
                    <div class="bot">&nbsp;</div>
                </li>
                <li>
                    <div class="top">&nbsp;</div>
                    <div class="center">
                        <dl>
                            <dt>培训服务</dt>
                            <div class="noun clearfix"><img src="pics/bianli.gif"/>
                                <span>我们为客户提供专业的咖啡制作指导服务，令您的咖啡师能够制作完美的咖啡产品；同时我们会定期安排课程和交流活动邀请我们的客户参与。<a
                                        href="contact.do" target="_blank">［现在预定］</a></span>
                            </div>
                            <dd>大部分公司员工乐于接受在办公室提供新鲜优质的咖啡饮品</dd>
                            <dd>大约70％受调查的公司雇主认为提供咖啡有助于提高工作效率；</dd>
                            <dd>有超过70％的公司承认为客户提供新鲜优质的咖啡可以树立公司的正面形象和对项目有所帮助；</dd>
                            <dd>有超过85％的员工认为新鲜焙炒的咖啡优于速溶咖啡</dd>
                        </dl>
                    </div>
                    <div class="bot">&nbsp;</div>
                </li>
            </ul>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>