<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 15:38
  To change this template use File | Settings | File Templates.
  JSP负责控制逻辑、表现逻辑、业务对象（javabean）的调用
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
    <title>JavaWeb的两种开发模式之 jsp+javabean开发模式架构</title>
</head>
<body>
<%--
1.jsp负责显示计算器(calculator)页面,供用户输入计算数据,并显示计算后的结果
2.javaBean负责接收用户输入的计算数据并且进行计算
--%>
<p>计算结果是:</p>
<jsp:getProperty name="calcBean" property="firstNum"/>
<jsp:getProperty name="calcBean" property="operator"/>
<jsp:getProperty name="calcBean" property="secondNum"/>
=
<jsp:getProperty name="calcBean" property="result"/>

<br/>
<hr>
<br/>
<form action="_015_jsp.jsp" method="post">
    <table border="1px">
        <tr>
            <td colspan="2">简单的计算器</td>
        </tr>
        <tr>
            <td>第一个参数</td>
            <td><input type="text" name="firstNum"></td>
        </tr>
        <tr>
            <td>运算符</td>
            <td><select name="operator">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select></td>
        </tr>
        <tr>
            <td>第二个参数</td>
            <td><input type="text" name="secondNum"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="计算"></td>
        </tr>
    </table>

</form>

</body>
</html>
