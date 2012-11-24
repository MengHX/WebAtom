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
        <td width="99%" background="images/news-title-bg.gif" class="left_bt2">当前操作&nbsp;>&nbsp;网站管理&nbsp;>&nbsp;查看信息̬
        </td>
    </tr>
    <tr>
        <td height="102" valign="top" colspan="2">
            <table cellpadding="1" cellspacing="0" class="vcher_show_detail_table">
                <tr>
                    <th width="200px">网站名称：</th>
                    <td>${basicInfo.title}</td>
                </tr>
                <tr>
                    <th>网站关键词：</th>
                    <td>${basicInfo.title}</td>
                </tr>
                <tr>
                    <th>网站描述：</th>
                    <td>${basicInfo.synopsis}</td>
                </tr>
                <tr>
                    <th>今日访问数：</th>
                    <td>${basicInfo.todayView}</td>
                </tr>
                <tr>
                    <th>访问总人数：</th>
                    <td>${basicInfo.allview}</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;<button onclick="location.href='admin/mdyWebTitle.do'">修改</button>&nbsp;&nbsp;<button onclick="history.go(-1)">返回</button>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="5" colspan="2">&nbsp;</td>
    </tr>
</table>
<%@ include file="../frame/innerBottom.jsp" %>

