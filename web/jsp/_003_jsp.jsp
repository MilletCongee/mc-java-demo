<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 13:43
  To change this template use File | Settings | File Templates.
  include指令
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--　include指令用于引入其它JSP页面,如果使用include指令引入了其它JSP页面,
那么JSP引擎将把这两个JSP翻译成一个servlet.所以include指令引入通常也称之为静态引入.--%>
<html>
<head>
    <title>jsp的Include指令测试</title>
</head>
<body>
   <%--使用include标签引入引入其它JSP页面--%>
        <%@include file="head.jsp" %>
        <h1>网页主体内容</h1>
        <%@include file="foot.jsp" %>
</body>
</html>
