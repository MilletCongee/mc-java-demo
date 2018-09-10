<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*"%>
<html>
<head>
    <title>PageContext引入和跳转到其他资源</title>
</head>
<%
    //使用pageContext的forward方法跳转到_001_jsp.jsp页面，/代表了当前的web应用
    pageContext.forward("_001_jsp.jsp");
    //使用pageContext.forward(relativeUrlPath)替代RequestDispatcher.forward(relativeUrlPath)
    //使用RequestDispatcher的forward方法实现的跳转方式
    //pageContext.getRequest().getRequestDispatcher("_001_jsp.jsp").forward(request, response);
%>
<body>

</body>
</html>
