<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="person" class="bean.Person" scope="page"/>
<jsp:setProperty property="name" name="person" param="param_name"/>
<html>
<head>
    <title>使用请求参数为bean的属性赋值</title>
</head>
<body>
<%--http://localhost:8080/jsp/_013_jsp.jsp?param_name=lol--%>
<h2>姓名：<%=person.getName()%></h2>
</body>
</html>
