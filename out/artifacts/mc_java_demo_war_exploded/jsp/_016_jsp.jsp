<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<jsp:useBean id="calcBean" class="bean.CalculatorBean"/>
<%--接收用户输入的参数 --%>
<jsp:setProperty name="calcBean" property="*"/>
<%
    //使用CalculatorBean进行计算
    calcBean.calculate();
%>
<html>
<head>
    <title>JavaWeb的两种开发模式之 Servlet+JSP+JavaBean开发模式</title>
</head>
<body>
<%--
1.控制器(Controller)采用Servlet
2.模型(Model)采用JavaBean
3.视图(View)采用JSP
--%>


<br/>
<hr>
<br/>


</body>
</html>
