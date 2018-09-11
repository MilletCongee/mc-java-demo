<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/11
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.Person" %>
<%
    // 创建一个对象
    Person p = new Person();
    p.setName("张三");
    //把对象放到域
    pageContext.setAttribute("person", p);
%>
<html>
<head>
    <title>EL表达式式</title>
</head>
<body>
<%--EL表达式写在JSP的HTML代码中--%>
<%--不能写在"<%%>"引起的JSP脚本中--%>

<%-- JSP表达式--%>
<h1><%=pageContext.getAttribute("person") %></h1>

<hr/>
getAttribute
<%--EL表达式--%>
<h1>${person.name}</h1>



<hr>

</body>
</html>
