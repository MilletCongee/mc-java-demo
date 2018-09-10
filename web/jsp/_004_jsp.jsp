<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext作为域对象</title>
</head>
<body>
<h5>pageContext的findAttribute方法查找属性值</h5>
<%
    pageContext.setAttribute("name1","A");
    pageContext.setAttribute("name2","AB");
    pageContext.setAttribute("name3","ABC");
    pageContext.setAttribute("name4","ABCD");
%>
<%--//使用pageContext的findAttribute方法查找属性.
    由于取得的值为Object类型,
    因此必须使用String强制向下转型，转换成String类型--%>
<%
    //查找name1属性，按照顺序"page→request→session→application"在这四个对象中去查找
    String refName1 = (String)pageContext.findAttribute("name1");
    String refName2 = (String)pageContext.findAttribute("name2");
    String refName3 = (String)pageContext.findAttribute("name3");
    String refName4 = (String)pageContext.findAttribute("name4");
    String refName5 = (String)pageContext.findAttribute("name5");//查找一个不存在的属性

%>
<h1>pageContext.findAttribute方法查找到的属性值：</h1>
<h3>pageContext对象的name1属性：<%=refName1%></h3>
<h3>request对象的name2属性：<%=refName2%></h3>
<h3>session对象的name3属性：<%=refName3%></h3>
<h3>application对象的name4属性：<%=refName4%></h3>
<h3>查找不存在的name5属性：<%=refName5%></h3>
<hr/>
<h1>使用EL表达式进行输出：</h1>
<h3>pageContext对象的name1属性：${name1}</h3>
<h3>request对象的name2属性：${name2}</h3>
<h3>session对象的name3属性：${name3}</h3>
<h3>application对象的name4属性：${name4}</h3>
<%--EL表达式语句在执行时 找到则返回相应对象，找不到则返回 "" --%>
<h3>不存在的name5属性：${name5}</h3>

</body>
</html>
