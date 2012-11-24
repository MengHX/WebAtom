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
        <td width="99%" background="images/news-title-bg.gif" class="left_bt2">当前操作&nbsp;>&nbsp;新闻管理&nbsp;>&nbsp;添加新闻̬
        </td>
    </tr>
    <tr>
        <td height="102" valign="top" colspan="2">
            <form id="oprForm" action="admin/addNews.do" method="post">
                <input type="hidden" name="newsId" value="${news.id}"/>
                <table class="vcher_form_table">
                    <tr>
                        <th>名称：</th>
                        <td><input type="text" id="title" name="title" size="50" value="${news.title}"/></td>
                    </tr>
                    <tr>
                        <th>内容：</th>
                        <td><textarea cols="50" id="content" name="content" rows="5" value="${news.content}"></textarea></td>
                    </tr>
                    <tr>
                        <th>分类：</th>
                        <td><v:newsGroup id="newsGroup" name="groupId" value=""/>&nbsp;&nbsp;<a href="javascript:delNewsType()">删除该类别</a>&nbsp;|&nbsp;<a href="javascript:addNewsType()">添加新类别</a>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <button type="reset">重置</button>&nbsp;&nbsp;&nbsp;&nbsp;
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
        } else if ($("#content").val().trim() == "") {
            alert("正文不能为空");
            $("#content").focus();
            return;
        } else if ($("#newsGroup").val()==null||$("#newsGroup").val().trim() == "") {
            alert("新闻类型不能为空");
            $("#newsGroup").focus();
            return;
        }
        $("#oprForm").submit();
    }
</script>
<%@ include file="../frame/innerBottom.jsp" %>

