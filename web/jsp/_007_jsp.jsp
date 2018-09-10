<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用pageContext的include方法引入资源</title>
</head>
<body>
<%
    pageContext.include("head.jsp");
%>

<%
    pageContext.include("foot.jsp");
%>
<hr/>
<h5>使用jsp:include标签引入资源</h5>
<%-- 使用jsp:include标签引入资源--%>
<jsp:include page="head.jsp"/>
<jsp:include page="foot.jsp"/>
</body>
</html>
