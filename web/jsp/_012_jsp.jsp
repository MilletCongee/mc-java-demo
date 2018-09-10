<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:useBean id="person" class="bean.Person" scope="page"/>
<jsp:setProperty property="name" name="person" value="天神下凡"/>
<jsp:setProperty property="sex" name="person" value="男"/>
<jsp:setProperty property="age" name="person" value="18"/>
<jsp:setProperty property="married" name="person" value="false"/>
<%--<jsp:setProperty property="birthday" name="person" value="<%=new Date()%>"/>--%>

<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>姓名：<%=person.getName()%></h2>
<h2>性别：<%=person.getSex()%></h2>
<h2>年龄：<%=person.getAge()%></h2>
<h2>已婚：<%=person.isMarried()%></h2>
<%--<h2>出生日期：<%=person.getBirthday()%></h2>--%>

</body>
</html>
