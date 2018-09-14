<%--
  Created by IntelliJ IDEA.
  User: zc
  Date: 2018/9/10
  Time: 11:14
  To change this template use File | Settings | File Templates.

  JSP编译
  1.解析JSP文件
  2.将JSP文件转为servlet
  3.编译servlet
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--JSP中申明方法与属性(全局变量)　　使用<%!  方法、属性%>--%>
<%! int day = 3; %>
<%! int fontSize; %>
<html>
<head>
    <title>第一个 JSP 程序</title>
</head>
<body>
<%--使用<% 编写java代码 %>，中间java代码必须遵循Java语法--%>
<%
    out.println("Hello World！");
    out.println("Your IP address is " + request.getRemoteAddr());
%>
<%-- 该部分注释在网页中不会被显示--%>

<h3>IF...ELSE 实例</h3>
<%--JSP脚本片断中只能出现java代码,不能出现其它模板元素--%>
<% if (day == 1 | day == 7) { %>
<p>今天是周末</p>
<% } else { %>
<p>今天不是周末</p>
<%--多个脚本片断中的代码可以相互访问,犹如将所有的代码放在一对<%%>之中的情况--%>
<%--单个脚本片断中的Java语句可以是不完整的,但是,多个脚本片断组合后的结果必须是完整的Java语句--%>
<% } %>


<p>
    <%--JSP表达式--%>
    今天的日期是:<%= (new java.util.Date()).toLocaleString()%>
</p>
<%
    switch(day) {
        case 0:
            out.println("星期天");
            break;
        case 1:
            out.println("星期一");
            break;
        case 2:
            out.println("星期二");
            break;
        case 3:
            out.println("星期三");
            break;
        case 4:
            out.println("星期四");
            break;
        case 5:
            out.println("星期五");
            break;
        default:
            out.println("星期六");
    }
%>
<h3>For 循环实例</h3>

<% for (fontSize = 1;fontSize<=3;fontSize ++){%>
    <font color="green" size="<%= fontSize %>">
    菜鸟教程
    </font><br />
<%}%>


</body>
</html>
