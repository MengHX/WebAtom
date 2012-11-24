<%--
  User: menghx
  Date: 4/5/12
  Time: 10:15 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.vcher.coffee.bean.support.ImageConstants" %>
<%@ include file="../frame/innerTop.jsp" %>
<table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
    <tr>
        <td width="1%" height="27" background="images/news-title-bg.gif">
            <img src="images/news-title-bg.gif" width="1" height="27">
        </td>
        <td width="99%" background="images/news-title-bg.gif" class="left_bt2">当前操作&nbsp;>&nbsp;网站管理&nbsp;>&nbsp;修改图片̬
        </td>
    </tr>
    <tr>
        <td height="102" valign="top" colspan="2">
            <form id="oprForm" action="admin/mdyWebImage.do" method="post" enctype ="multipart/form-data">
            <table class="vcher_form_table">
                <tr>
                    <th>名称：</th>
                    <td><input type="text" id="title" name="title" size="50" value=""/></td>
                </tr>
                <tr>
                    <th>图片位置：</th>
                    <td>
                        <select name="type">
                            <option value="<%=ImageConstants.LOGO_IMAGE%>">网站LOGO</option>
                            <option value="<%=ImageConstants.FRONT_LOGO_LEFT%>">LOGO装饰图:54x122px</option>
                            <option value="<%=ImageConstants.FRONT_FIRST_IMAGE%>">首页大图1:164x412px</option>
                            <option value="<%=ImageConstants.FRONT_SECOND_IMAGE%>">首页大图2:164x412px</option>
                            <option value="<%=ImageConstants.FRONT_THIRD_IMAGE%>">首页大图3:164x412px</option>
                            <option value="<%=ImageConstants.FRONT_FOURTH_IMAGE%>">首页大图4:164x412px</option>
                            <option value="<%=ImageConstants.FRONT_ABOUT_IMAGE%>">首页关于我们图:282x174px</option>
                            <option value="<%=ImageConstants.FRONT_CORNER_IMAGE%>">首页左下小图:129x90px</option>
                            <option value="<%=ImageConstants.OFFICE_LEFT_IMAGE%>">办公室咖啡左图:330x411px</option>
                            <option value="<%=ImageConstants.OFFICE_ICON_IMAGE%>">办公室咖啡图标:186x84px</option>
                            <option value="<%=ImageConstants.DINING_LEFT_IMAGE%>">餐饮酒店左图:330x411px</option>
                            <option value="<%=ImageConstants.CONVENIENCE_LEFT_IMAGE%>">便利服务左图:330x411px</option>
                            <option value="<%=ImageConstants.CONTRACT_LEFT_IMAGE%>">合约服务左图:330x411px</option>
                            <option value="<%=ImageConstants.ABOUT_LEFT_IMAGE%>">关于我们左图:330x411px</option>
                            <option value="<%=ImageConstants.CONTACT_LEFT_IMAGE%>">联系我们左图:330x411px</option>
                            <option value="<%=ImageConstants.CONVENIENCE_FIRST_IMAGE%>">便利服务图1:135x173px</option>
                            <option value="<%=ImageConstants.CONVENIENCE_SECOND_IMAGE%>">便利服务图2:135x173px</option>
                            <option value="<%=ImageConstants.CONVENIENCE_THIRD_IMAGE%>">便利服务图3:135x173px</option>
                            <option value="<%=ImageConstants.CONTRACT_FIRST_IMAGE%>">合约服务图1:169x217px</option>
                            <option value="<%=ImageConstants.CONTRACT_SECOND_IMAGE%>">合约服务图2:169x217px</option>
                            <option value="<%=ImageConstants.CONTRACT_THIRD_IMAGE%>">合约服务图3:169x217px</option>
                        </select><span style="color: red">请严格按照指定图片大小替换，建议用jpg格式</span>
                    </td>
                </tr>
                <tr>
                    <th>图片：</th>
                    <td><input type="file" id="image" name="image" value=""/></td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                       <button type="reset">重置</button>&nbsp;&nbsp;&nbsp;&nbsp;
                       <button type="reset" onclick="location.href='admin/frontImage_list.do'">返回</button>&nbsp;&nbsp;&nbsp;&nbsp;
                       <button type="button" onclick="checkForm()">提交</button>
                    </td>
                </tr>
            </table>
            </form>
        </td>
    </tr>
    <tr>
        <td height="5" colspan="2">&nbsp;</td>
    </tr>
</table>
<script>
    function checkForm() {
        if ($("#title").val().trim() == "") {
            alert("名称不能为空");
            $("#title").focus();
            return;
        } else if ($("#image").val().trim() == "") {
            alert("图片不能为空");
            $("#image").focus();
            return;
        }
        $("#oprForm").submit();
    }
</script>
<%@ include file="../frame/innerBottom.jsp" %>

