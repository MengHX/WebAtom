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
            <form id="oprForm" action="admin/updatePassword.do" method="post">
                <table cellpadding="1" cellspacing="0" class="vcher_show_detail_table">
                    <tr>
                        <th width="200px">原始密码：</th>
                        <td><input id="oldPassword" type="password" value="" name="oldPassword" size="18" length="18"/></td>
                    </tr>
                    <tr>
                        <th>新密码：</th>
                        <td><input id="password" type="password" value="" name="password" size="18" length="18"/></td>
                    </tr>
                    <tr>
                        <th>确认密码：</th>
                        <td><input id="rePassword" type="password" value="" size="18" length="18"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;
                            <button type="reset" onclick="history.go(-1)">返回</button>
                            &nbsp;&nbsp;
                            <button type="button" onclick="checkForm();">确认</button>
                            &nbsp;</td>
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
        var regex=/^([0-9A-Za-z]){6,18}$/;
        if ($("#oldPassword").val().trim() == "") {
            alert("原始密码不能为空");
            $("#oldPassword").focus();
            return;
        } else if ($("#password").val().trim() == "") {
            alert("新密码不能为空");
            $("#password").focus();
            return false;
        } else if ($("#rePassword").val().trim() == "") {
            alert("确认密码不能为空");
            $("#rePassword").focus();
            return;
        } else if ($("#password").val().trim()!=$("#rePassword").val().trim()) {
            alert("两次新密码输入不一致请重新输入");
            $("#password").val("").focus();
            $("#rePassword").val("");
            return;
        } else if(!regex.test($("#oldPassword").val())){
            alert("原密码输入非法，密码仅能为6-18位数字或字母");
            $("#oldPassword").val("").focus();
            return;
        } else if(!regex.test($("#password").val())){
            alert("新密码输入非法，密码仅能为6-18位数字或字母");
            $("#password").val("").focus();
            $("#rePassword").val("");
            return;
        }
        $("#oprForm").submit();
    }
</script>
<%@ include file="../frame/innerBottom.jsp" %>

