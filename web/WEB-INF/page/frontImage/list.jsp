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
        <td width="99%" background="images/news-title-bg.gif" class="left_bt2">当前操作&nbsp;>&nbsp;网站管理&nbsp;>&nbsp;大图管理̬
        </td>
    </tr>
    <tr>
        <td height="40" valign="top" colspan="2">
            <form id="searchItemForm" action="admin/searchFrontImage.do" method="post">
                <table width="95%" cellpadding="1" cellspacing="0" class="vcher_list_table">
                    <tr>
                        <td>
                            <button type="reset" onclick="location.href='admin/frontImage_add.do'">添加新图</button>
                            <input type="hidden" name="keywords" id="keywords" value="${keywords}"/>&nbsp;&nbsp;
                            <button type="submit">查看</button>
                            <input type="hidden" value="5" name="pageSize"/>
                            <input type="hidden" name="showImage" value="1"/>
                        </td>
                    </tr>
                </table>
                <input id="pageIndex" type="hidden"
                       value="<c:if test="${pageIndex==null||pageIndex==''}">0</c:if><c:if test="${pageIndex!=null&&pageIndex!=''}">${pageIndex}</c:if>"
                       name="pageIndex"/>
                <input id="pageCount" type="hidden"
                       value="<c:if test="${pageCount==null||pageCount==''}">0</c:if><c:if test="${pageCount!=null&&pageCount!=''}">${pageCount}</c:if>"
                       name="pageCount"/>
            </form>
        </td>
    </tr>
    <tr>
        <td height="102" valign="top" colspan="2">
            <c:if test="${frontImageList==null}">
                <span class="vcher_null_tips">点击按钮查询，默认为查询所有记录！</span>
            </c:if>
            <c:if test="${frontImageList!=null&&frontImageList.size()=='0'}">
                <span class="vcher_null_tips">未查询到记录！</span>
            </c:if>
            <c:if test="${frontImageList!=null&&frontImageList.size()!='0'}">
                <table width="95%" cellpadding="1" cellspacing="0" class="vcher_list_table">
                    <tr>
                        <th width="25px">序号</th>
                        <th width="25px">次序</th>
                        <th width="200px">名称</th>
                        <th width="80px">添加人</th>
                        <th width="120px">时间</th>
                        <th>图片</th>
                        <th width="100px">操作</th>
                    </tr>
                    <c:if test="${frontImageList!=null&&frontImageList.size()>0}">
                        <c:forEach var="frontImage" items="${frontImageList}">
                            <tr id="frontImageItem_${frontImage.id}">
                                <td>${frontImage.id}</td>
                                <td>${frontImage.orderIndex}</td>
                                <td>${frontImage.title}</td>
                                <td>${frontImage.createUser}</td>
                                <td>${frontImage.createTime}</td>
                                <td>
                                    <a href="upload/${frontImage.url}" title="点击查看大图" target="_blank"><img
                                            src="upload/${frontImage.url}" alt="" width="218" height="100"/></a>
                                </td>
                                <td>&nbsp;<a
                                        href="javascript:delFrontImage(${frontImage.id})">删除</a></td>
                            </tr>
                        </c:forEach>
                    </c:if>
                    <tr>
                        <th colspan="7">
                            <button onclick="firstPage()">首页</button>
                            &nbsp;
                            <button onclick="forwardPage()">上一页</button>
                            &nbsp;&nbsp;共&nbsp;${itemCount}&nbsp;条&nbsp;/&nbsp;第&nbsp;${pageIndex+1}&nbsp;页&nbsp;/&nbsp;共&nbsp;${pageCount}&nbsp;页&nbsp;&nbsp;
                            <button onclick="nextPage()">下一页</button>
                            &nbsp;
                            <button onclick="lastPage()">末页</button>
                        </th>
                    </tr>
                </table>
            </c:if>
        </td>
    </tr>
    <tr>
        <td height="5" colspan="2">&nbsp;</td>
    </tr>
</table>
<form id="oprForm" action="admin/listFrontImage" method="post">
    <input id="oprId" type="hidden" oprId=""/>
    <input id="startIndex" type="hidden" value="" name="startIndex"/>
    <input id="endIndex" type="hidden" value="" name="endIndex"/>
</form>
<%@ include file="../frame/innerBottom.jsp" %>

