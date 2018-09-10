<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="person" class="bean.Person" scope="page"/>
<%--
    jsp:setProperty标签用所有的请求参数为bean的属性赋值
    property="*"代表bean的所有属性
--%>
<jsp:setProperty property="*" name="person"/>
<html>
<head>
    <title>用所有的请求参数为bean的属性赋值</title>
</head>
<body>
<%--http://localhost:8080/jsp/_014_jsp.jsp?name=lol&sex=%E7%94%B7&age=18&married=false--%>
    <h2>姓名：<%=person.getName()%></h2>
    <h2>性别：<%=person.getSex()%></h2>
    <h2>年龄：<%=person.getAge()%></h2>
    <h2>已婚：<%=person.isMarried()%></h2>
<h1>jsp:getProperty标签</h1>
<%--标签用于读取JavaBean对象的属性,也就是调用JavaBean对象的getter方法,
然后将读取的属性值转换成字符串后插入进输出的响应正文中。--%>
<h2>姓名：<jsp:getProperty property="name" name="person"/></h2>
<h2>性别：<jsp:getProperty property="sex" name="person"/></h2>
<h2>年龄：<jsp:getProperty property="age" name="person"/></h2>
<h2>已婚：<jsp:getProperty property="married" name="person"/></h2>
</body>
</html>
