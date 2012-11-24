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
        <td width="99%" background="images/news-title-bg.gif" class="left_bt2">当前操作&nbsp;>&nbsp;网站管理&nbsp;>&nbsp;添加图片̬
        </td>
    </tr>
    <tr>
        <td height="102" valign="top" colspan="2">
            <form id="oprForm" action="admin/addFrontImage.do" method="post" enctype ="multipart/form-data">
                <input type="hidden" name="productId" value=""/>
            <table class="vcher_form_table">
                <tr>
                    <th>名称：</th>
                    <td><input type="text" id="title" name="title" size="50" value=""/></td>
                </tr>
                <tr>
                    <th>图片位置：</th>
                    <td>
                        <select>
                            <option value="">LOGO装饰图</option>
                            <option value="">网站LOGO</option>
                            <option value="">首页大图1</option>
                            <option value="">首页大图2</option>
                            <option value="">首页大图3</option>
                            <option value="">首页大图4</option>
                            <option value="">首页关于我们小图</option>
                            <option value="">首页左下小图</option>
                            <option value="">网站LOGO</option>
                            <option value="">网站LOGO</option>
                            <option value="">网站LOGO</option>
                            <option value="">网站LOGO</option>
                            <option value="">网站LOGO</option>
                            <option value="">网站LOGO</option>
                            <option value="">网站LOGO</option>
                            <option value="">网站LOGO</option>
                            <option value="">网站LOGO</option>
                        </select>
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

