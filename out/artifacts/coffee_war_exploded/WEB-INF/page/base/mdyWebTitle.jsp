<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  User: menghx
  Date: 4/5/12
  Time: 10:15 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../frame/innerTop.jsp" %>
<table width="100%" height="144" border="0" cellpadding="0" cellspacing="0" class="line_table">
    <tr>
        <td width="1%" height="27" background="images/news-title-bg.gif">
            <img src="images/news-title-bg.gif" width="1" height="27">
        </td>
        <td width="99%" background="images/news-title-bg.gif" class="left_bt2">当前操作&nbsp;>&nbsp;产品管理&nbsp;>&nbsp;添加产品̬
        </td>
    </tr>
    <tr>
        <td height="102" valign="top" colspan="2">
            <form id="oprForm" action="admin/updateWebTitle.do" method="post">
            <table cellpadding="1" cellspacing="0" class="vcher_show_detail_table">
                <tr>
                    <th width="200px">网站名称：</th>
                    <td><input id="title" type="text" value="${basicInfo.title}" name="title"/></td>
                </tr>
                <tr>
                    <th>网站关键词：</th>
                    <td><textarea id="keyWords"  rows="2" cols="50" value="${basicInfo.keyWords}" name="keyWords"></textarea>&nbsp;<span style="color: red">请以逗号，竖线或者空格分割</span></td>
                </tr>
                <tr>
                    <th>网站描述：</th>
                    <td><textarea id="synopsis" rows="3" cols="50" value="${basicInfo.synopsis}" name="synopsis"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;<button type="reset" onclick="history.go(-1)">返回</button>&nbsp;&nbsp;<button type="button" onclick="checkForm()">确认</button>&nbsp;</td>
                </tr>
            </table>
            </form>
        </td>
    </tr>
    <tr>
        <td height="5" colspan="2">&nbsp;</td>
    </tr>
</table>
<script type="text/javascript">
    function checkForm() {
        if ($("#title").val().trim() == "") {
            alert("网站名称不能为空");
            $("#title").focus();
            return;
        } else if ($("#keyWords").val().trim() == "") {
            alert("关键词不能为空");
            $("#keyWords").focus();
            return false;
        } else if ($("#synopsis").val().trim() == "") {
            alert("描述不能为空");
            $("#synopsis").focus();
            return;
        }
        $("#oprForm").submit();
    }
</script>
<%@ include file="../frame/innerBottom.jsp" %>

