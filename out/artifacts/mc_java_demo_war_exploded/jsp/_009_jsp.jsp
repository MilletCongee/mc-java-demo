<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 14:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  import="java.util.*" language="java" %>
<html>
<head>
    <title>_009_jsp.jsp</title>
</head>
<body>
<jsp:forward page="_010_jsp.jsp">
    <jsp:param name="ref1" value="hello" />
    <jsp:param name="ref2" value="gacl" />
</jsp:forward>
</body>
</html>
