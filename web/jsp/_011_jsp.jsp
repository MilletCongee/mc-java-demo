<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="person" class="bean.Person" scope="page"/>
<%
    //person对象在上面已经使用jsp:useBean标签实例化了，因此在这里可以直接使用person对象
    //使用setXxx方法为对象的属性赋值
    //为person对象的name属性赋值
    person.setName("天神下凡");
    //为person对象的Sex属性赋值
    person.setSex("男");
    //为person对象的Age属性赋值
    person.setAge(18);
    //为person对象的married属性赋值
    person.setMarried(false);
%>
<html>
<head>
    <title>在JSP中使用JavaBean</title>
</head>
<body>
<%--使用getXxx()方法获取对象的属性值 --%>
<h2>姓名：<%=person.getName()%></h2>
<h2>性别：<%=person.getSex()%></h2>
<h2>年龄：<%=person.getAge()%></h2>
<h2>已婚：<%=person.isMarried()%></h2>
</body>
</html>
