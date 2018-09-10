<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%--JSP指令--%>
<%--一个指令有多个属性，这多个属性可以写在一个指令中，也可以分开写--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,java.io.*,java.sql.*"%>
<%@page errorPage="error.jsp" %>
<html>
<head>
    <title>测试page指令的errorPage属性</title>
</head>
<body>
<%
    //这行代码肯定会出错，因为除数是0，一运行就会抛出异常
    int x = 1/0;
%>
</body>
</html>
