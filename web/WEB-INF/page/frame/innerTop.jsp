<%--
  User: menghx
  Date: 4/7/12
  Time: 1:16 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="v" uri="vcher-admin-taglib"%>
<%
    String oprTitle = request.getParameter("oprTitle") == null ? "操作页面" : request.getParameter("oprTitle");
%>
<html>
<head>
    <%@ include file="../public/common.jsp" %>
    <link href="images/skin.css" rel="stylesheet" type="text/css"/>
    <link href="css/vcher.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/admin.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17"
                                                                             height="29"/></td>
        <td valign="top" background="images/content-bg.gif">
            <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
                <tr>
                    <td height="31">
                        <div class="titlebt"><%=oprTitle%>
                        </div>
                    </td>
                </tr>
            </table>
        </td>
        <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16"
                                                                              height="29"/></td>
    </tr>
    <tr>
        <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
        <td valign="top" bgcolor="#F7F8F9">