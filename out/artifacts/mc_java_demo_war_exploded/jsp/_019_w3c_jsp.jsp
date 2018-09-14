<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/14
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
Hello World!<br/>
脚本程序的语法格式<br/>
<%
out.println("Your IP address is " + request.getRemoteAddr());
%>
或者<br/>
<%= "用于替代 out.print()" %>

</body>
</html>
