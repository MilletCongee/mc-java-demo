<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>接收参数</title>
</head>
<body>
<h1>跳转之后的页面！！</h1>
<h1>接收从传递过来的参数：</h1>
<h1>ref1：<%=request.getParameter("ref1")%></h1>
<h1>ref2：<%=request.getParameter("ref2")%></h1>
</body>
</html>
