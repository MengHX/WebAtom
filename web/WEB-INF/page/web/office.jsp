<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vcher.coffee.bean.support.ImageConstants" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>兴业咖啡服务中心－办公室咖啡</title>
    <%@ include file="base.jsp" %>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".title_list>li").click(function () {
                $(this).addClass(" now_focus");
                $(this).siblings().removeClass("now_focus");
                var $dangqian = $(".con_list>li").eq($(".title_list>li").index(this));
                $dangqian.addClass(" now_focus");
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
            <div class="box"><v:image type="<%=ImageConstants.OFFICE_LEFT_IMAGE%>" ifnull="pics/submenu2.jpg"/></div>
            <ul class="title_list" id="menu_one">
                <li id="first" class="now_focus">&nbsp;</li>
                <li class="odd"><a>01<span> 咖啡产品及辅充产品</span></a></li>
                <li><a>02<span>茶及其他热饮</span></a></li>
                <li class="odd"><a>03<span>咖啡设备</span></a></li>
                <li><a>04<span>维护及服务</span></a></li>
                <li class="odd"><a>05<span>Why office coffee?</span></a></li>
                <li><a>06<span>成功案例</span></a></li>
            </ul>
        </div>
        <div id="contentRight">
            <h1 class="submenu02">办公室<span>咖啡</span></h1>

            <div class="h1-extra extra clearfix">
                <div class="h1pic"><v:image type="<%=ImageConstants.OFFICE_ICON_IMAGE%>" ifnull="pics/t2.jpg"/></div>
                <div class="h1txt">
                    咖啡壶里煮的是沉浮，咖啡杯里盛的是梦想，而咖啡馆里氤氲飘渺的芬芳，足以包容世间的沧桑，是一处心灵靠岸的港湾。对于大多数中国人来说，咖啡是一种时尚标签。它不仅仅是一种点缀饮品，更是一种生活方式。
                </div>
            </div>
            <ul class="con_list">
                <li class="now_focus">
                    <p>对于客户的来访；工作会议及接待等，甚至鼓励员工的士气以提高工作效率，或许您都需要在办公室提供专业的咖啡服务。这将体现企业的人性化管理和良好的公司印象。</p>

                    <p>无论您的公司人数多少或预算成本方面的考虑， 兴业咖啡服务中心有多样完美的咖啡解决方案供您选择。</p>

                    <p>拨打<a href="contact.do" target="_blank">电话</a>或<a href="contact.do" target="_blank">发送邮件</a>，就可以得到我们专业的建议和热情的服务。
                    </p>
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
                    <dl>
                        <dt>Why office coffee</dt>
                        <div class="noun clearfix">
                            <img src="pics/office.jpg"/>
                            <span>无论是哪里的人当聚集在您的公司时，能够奉上一杯香浓新鲜的咖啡一定会赢得一个热情友善的氛围。令您事半功倍。</span>
                        </div>
                        <div class="clear">&nbsp;</div>
                        <div class="noun1">一项来自AMARACH RESEARCH于2008年1月的关于［办公室咖啡调查］中显示：</div>
                        <dd class="d1">大部分公司员工乐于接受在办公室提供新鲜优质的咖啡饮品</dd>
                        <dd class="d2">大约70％受调查的公司雇主认为提供咖啡有助于提高工作效率；</dd>
                        <dd class="d3">有超过70％的公司承认为客户提供新鲜优质的咖啡可以树立公司的正面形象和对项目有所帮助；</dd>
                        <dd class="d4">有超过85％的员工认为新鲜焙炒的咖啡优于速溶咖啡</dd>
                    </dl>
                </li>
                <li>
                    <div class="top">&nbsp;</div>
                    <div class="center">
                        <dl>
                            <dt>案例1</dt>
                            <dd> 大部分公司员工乐于接受在办公室提供新鲜优质的咖啡饮品</dd>
                            <dt>案例2</dt>
                            <dd>大部分公司员工乐于接受在办公室提供新鲜优质的咖啡饮品</dd>
                            <dt>案例3</dt>
                            <dd>大部分公司员工乐于接受在办公室提供新鲜优质的咖啡饮品</dd>
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