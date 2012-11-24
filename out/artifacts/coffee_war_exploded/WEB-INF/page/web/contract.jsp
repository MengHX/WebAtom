<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vcher.coffee.bean.support.ImageConstants" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>兴业咖啡服务中心－合约服务</title>
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
            <div class="box"><v:image type="<%=ImageConstants.CONTRACT_LEFT_IMAGE%>" ifnull="pics/submenu5.jpg"/></div>
            <ul class="title_list" id="menu_one">
                <li><a>01<span>调查表</span></a></li>
                <li class="odd"><a>02<span> 郑重承诺</span></a></li>

            </ul>
        </div>
        <div id="contentRight" class="contact">
            <h1 class="submenu05">合约<span>服务</span></h1>
            <ul class="con_list">
                <li class="now_focus">
                    <div>
                        我们期待能够倾听您的需求，如果您肯花费几分钟时间时间填写下列选项，告知我们您的需求，我们将积极对待并尽快委派我们的客户代表与您联系，为您提供完美适合的方案。
                    </div>
                    <form action="form_action.jsp" method="get">
                        <div class="field" id="field1">
                            <h2 class="itemTitle">1.您需要什么样的咖啡<span style="color:#ff9000">*</span></h2>

                            <div class="fieldItems">
                                <div class="itemText">
                                    <div class="list_item">
                                        <input id="q1" name="g1" value="1_1.00" type="radio">
                                        <label for="q1" class="itemText">过滤式冲煮咖啡（可同时供多人饮用）</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q2" name="g1" value="2_2.00" type="radio">
                                        <label for="q2" class="itemText">仅根据需要单杯制作（一次供1,2人饮用）</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field" id="field2">
                            <h2 class="itemTitle">2.每天有大约多少人需要咖啡服务？<span style="color:#ff9000">*</span></h2>

                            <div class="fieldItems">
                                <div class="itemText">
                                    <div class="list_item">
                                        <input id="q3" name="g2" value="1_1.00" type="radio">
                                        <label for="q3" class="itemText">1－9</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q4" name="g2" value="2_2.00" type="radio">
                                        <label for="q4" class="itemText">10－19</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q5" name="g2" value="3_3.00" type="radio">
                                        <label for="q5" class="itemText">20－50</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q6" name="g2" value="4_4.00" type="radio">
                                        <label for="q6" class="itemText">50-100</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q7" name="g2" value="5_5.00" type="radio">
                                        <label for="q7" class="itemText">100－500</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q8" name="g2" value="6_6.00" type="radio">
                                        <label for="q8" class="itemText">500+</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field" id="field3">
                            <h2 class="itemTitle">3.您现在是否已经有咖啡供应商<span style="color:#ff9000">*</span></h2>

                            <div class="fieldItems">
                                <div class="itemText">
                                    <div class="list_item">
                                        <input id="q9" name="g3" value="1_1.00" type="radio">
                                        <label for="q9" class="itemText">有</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q10" name="g3" value="2_2.00" type="radio">
                                        <label for="q10" class="itemText">没有</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field" id="field4">
                            <h2 class="itemTitle">4.描述您的咖啡服务位置<span style="color:#ff9000">*</span></h2>

                            <div class="fieldItems">
                                <div class="itemText">
                                    <div class="list_item">
                                        <input id="q11" name="g4" value="1_1.00" type="radio">
                                        <label for="q11" class="itemText">工业车间</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q12" name="g4" value="2_2.00" type="radio">
                                        <label for="q12" class="itemText">办公室</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q13" name="g4" value="3_3.00" type="radio">
                                        <label for="q13" class="itemText">教育机构</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q14" name="g4" value="4_4.00" type="radio">
                                        <label for="q14" class="itemText">便利店或加油站</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q15" name="g4" value="5_5.00" type="radio">
                                        <label for="q15" class="itemText">医院或疗养院</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q16" name="g4" value="6_6.00" type="radio">
                                        <label for="q16" class="itemText">餐厅或酒店</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q17" name="g4" value="7_7.00" type="radio">
                                        <label for="q17" class="itemText">其他 （请说明）
                                            <input type="text" onclick="$('q17').checked=true;return false;"
                                                   maxlength="128"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field" id="field5">
                            <h2 class="itemTitle">5.请告知您想提供咖啡服务的时间 <span style="color:#ff9000">*</span></h2>

                            <div class="fieldItems">
                                <div class="itemText">
                                    <div class="list_item">
                                        <input id="q18" name="g5" value="1_1.00" type="radio">
                                        <label for="q18" class="itemText">尽快</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q19" name="g5" value="2_2.00" type="radio">
                                        <label for="q19" class="itemText">1个月内</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q20" name="g5" value="3_3.00" type="radio">
                                        <label for="q20" class="itemText">1－3个月内</label>
                                    </div>
                                    <div class="list_item">
                                        <input id="q21" name="g5" value="4_4.00" type="radio">
                                        <label for="q21" class="itemText">3个月以后</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field" id="field6">
                            <h2 class="itemTitle">6.其他需告知事项</h2>

                            <div class="fieldItems">
                                <div class="itemText">
                                    <textarea rows="3" cols="20">&nbsp;</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="field" id="field7">
                            <h2 class="itemTitle">7.联系方式</h2>

                            <div class="fieldItems">
                                <div class="itemText">
                                    <input type="text" name="tel"/>
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="提交答卷"/></form>
                </li>
                <li>
                    <div class="top">&nbsp;</div>
                    <div class="center">
                        <dl>
                            <dt>郑重承诺</dt>
                            <dd class="d1">您的任何信息都将被妥善保存，不会被出售；</dd>
                            <dd class="d2">我们为您提供的任何预前服务方案都是免费的；因为方案的修改或产品及设备的演示及品尝也是免费的。</dd>
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