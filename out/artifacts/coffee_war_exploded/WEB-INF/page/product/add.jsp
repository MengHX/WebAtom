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
            <form id="oprForm" action="admin/addProduct.do" method="post" enctype ="multipart/form-data">
                <input type="hidden" name="productId" value="${product.id}"/>
            <table class="vcher_form_table">
                <tr>
                    <th>产品名称：</th>
                    <td><input id="title" type="text" name="title" size="50" value="${product.title}"/></td>
                </tr>
                <tr>
                    <th>产品简介：</th>
                    <td><textarea cols="50" id="synopsis" name="synopsis" rows="5" value="${product.synopsis}"></textarea></td>
                </tr>
                <tr>
                    <th>产品图片：</th>
                    <td><input type="file" id="image" name="image" value="${product.url}"/></td>
                </tr>
                <tr>
                    <th>产品类型：</th>
                    <td>
                        <v:productGroup id="productGroup" name="groupId" value=""/>&nbsp;&nbsp;<a href="javascript:delProductType()">删除该类型</a>&nbsp;|&nbsp;<a href="javascript:addProductType()">添加新类型</a>
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
        } else if ($("#synopsis").val().trim() == "") {
            alert("描述不能为空");
            $("#synopsis").focus();
            return;
        } else if ($("#image").val().trim() == "") {
            alert("图片不能为空");
            $("#image").focus();
            return false;
        } else if ($("#productGroup").val()==null||$("#productGroup").val().trim() == "") {
            alert("产品类型不能为空");
            $("#productGroup").focus();
            return;
        }
        $("#oprForm").submit();
    }
</script>
<%@ include file="../frame/innerBottom.jsp" %>

