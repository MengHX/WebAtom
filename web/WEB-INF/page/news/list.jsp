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
        <td width="99%" background="images/news-title-bg.gif" class="left_bt2">当前操作&nbsp;>&nbsp;新闻管理&nbsp;>&nbsp;新闻列表̬
        </td>
    </tr>
    <tr>
        <td height="40" valign="top" colspan="2">
            <form id="searchItemForm" action="admin/searchNews.do" method="post">
                <table width="95%" cellpadding="1" cellspacing="0" class="vcher_list_table">
                    <tr>
                        <td><label>新闻名称：</label><input type="text" name="keywords" id="keywords" value="${keywords}"/>&nbsp;&nbsp;
                            <button type="submit">查询</button>
                            &nbsp;&nbsp;每页
                            <select id="pageSize" name="pageSize">
                                <option value="5" <c:if test="${pageSize=='5'}">selected="selected"</c:if>>5</option>
                                <option value="10" <c:if test="${pageSize=='10'}">selected="selected"</c:if>>10</option>
                                <option value="20" <c:if test="${pageSize=='20'}">selected="selected"</c:if>>20</option>
                            </select>条
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
            <c:if test="${newsList==null}">
                <span class="vcher_null_tips">点击按钮查询，默认为查询所有记录！</span>
            </c:if>
            <c:if test="${newsList!=null&&newsList.size()=='0'}">
                <span class="vcher_null_tips">未查询到记录！</span>
            </c:if>
            <c:if test="${newsList!=null&&newsList.size()!='0'}">
                <table width="95%" cellpadding="1" cellspacing="0" class="vcher_list_table">
                    <tr>
                        <th width="25px">序号</th>
                        <th width="200px">名称</th>
                        <th>正文</th>
                        <th width="100px">操作</th>
                    </tr>
                    <c:if test="${newsList!=null&&newsList.size()>0}">
                        <c:forEach var="news" items="${newsList}">
                            <tr id="newsItem_${news.id}">
                                <td>${news.id}</td>
                                <td>${news.title}</td>
                                <td>${news.content}</td>
                                <td><a href="admin/showNews.do?newsId=${news.id}">&nbsp;查看</a>&nbsp;|<a href="admin/mdyNews.do?newsId=${news.id}">&nbsp;修改</a>&nbsp;|&nbsp;<a
                                        href="javascript:delNews(${news.id})">删除</a></td>
                            </tr>
                        </c:forEach>
                    </c:if>
                    <tr>
                        <th colspan="5">
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
<%@ include file="../frame/innerBottom.jsp" %>

