package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Enumeration;

//Servlet Cookie 处理
/*
* 服务器脚本向浏览器发送一组 Cookie.例如:姓名、年龄或识别号码等
* 浏览器将这些信息存储在本地计算机上,以备将来使用
* 当下一次浏览器向 Web 服务器发送任何请求时,浏览器会把这些 Cookie 信息发送到服务器,服务器将使用这些信息来识别用户
*
* */
//通过 Servlet 设置 Cookie
@WebServlet("/_007_servlet")
public class _007_servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 为名字和姓氏创建 Cookie  创建一个 Cookie 对象
        Cookie name = new Cookie("name",
                URLEncoder.encode(request.getParameter("name"), "UTF-8")); //  处理需要对中文进行编码与解码 中文转码
        Cookie url = new Cookie("url",
                request.getParameter("url"));
        // 为两个 Cookie 设置过期日期为 24 小时后
        name.setMaxAge(60*60*24);
        url.setMaxAge(60*60*24);



        // 在响应头中添加两个 Cookie
        response.addCookie( name );
        response.addCookie( url );


        // 设置响应内容类型
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String title = "设置 Cookie 实例";
        String docType = "<!DOCTYPE html>\n";
        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n" +
                "<ul>\n" +
                "  <li><b>站点名：</b>："
                + request.getParameter("name") + "\n</li>" +
                "  <li><b>站点 URL：</b>："
                + request.getParameter("url") + "\n</li>" +
                "</ul>\n" +
                "</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //做post请求的处理
        System.out.print("post");
    }
}
