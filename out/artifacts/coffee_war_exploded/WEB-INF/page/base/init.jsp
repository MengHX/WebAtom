<%--
  User: menghx
  Date: 4/8/12
  Time: 2:01 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <%@ include file="../public/common.jsp"%>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"/>
</head>
<body>
    <%
        String target = request.getParameter("target");
    %>
    <form id="initForm" action="admin/<%=target%>.do">
    </form>
    <script type="text/javascript">
         $(function(){
           $("#initForm").submit();
         });
    </script>
</body>
</html>