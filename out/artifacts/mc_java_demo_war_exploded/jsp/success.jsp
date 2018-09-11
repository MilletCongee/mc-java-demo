<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/11
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>My JSP 'success.jsp' starting page</title>
</head>
<body>
${xiaoxi} <br>
<a href="Searchall">查看所有用户</a>
</body>
</html>
