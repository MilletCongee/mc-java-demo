package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//当用户调用一个 Servlet 时,就会创建一个 Servlet 实例,
// 每一个用户请求都会产生一个新的线程,适当的时候移交给 doGet 或 doPost 方法
public class _001_servlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
        // 初始化代码...
    }

    //service() 方法是执行实际任务的主要方法.Servlet 容器（即 Web 服务器）调用 service()
    // 方法来处理来自客户端（浏览器）的请求,并把格式化的响应写回给客户端.
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);
    }

    //GET 请求来自于一个 URL 的正常请求,或者来自于一个未指定 METHOD 的 HTML 表单,它由 doGet() 方法处理.
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       //做get请求的处理
        System.out.print("get");// 设置响应内容类型

        // 设置响应内容类型
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        String title = "使用 GET 方法读取表单数据";
        String docType = "<!DOCTYPE html> \n";

        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n" +
                "<ul>\n" +
                "  <li><b>站点名</b>："
                + "\n" +
                "  <li><b>网址</b>："
                + req.getParameter("url") + "\n" +
                        req.getParameterValues("urls").toString()+"\n"
                +req.getParameterNames().nextElement()+"\n"+
                "</ul>\n" +
                "</body></html>");

        //req.getParameter("");// request.getParameter() 方法来获取表单参数的值
        //req.getParameterValues("");//如果参数出现一次以上,则调用该方法,并返回多个值,例如复选框
        //req.getParameterNames();//如果您想要得到当前请求中的所有参数的完整列表，则调用该方法。
    }

    //POST 请求来自于一个特别指定了 METHOD 为 POST 的 HTML 表单,它由 doPost() 方法处理.
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //做post请求的处理
        doGet(req,resp);
        System.out.print("post");
    }

    //destroy() 方法只会被调用一次,在 Servlet 生命周期结束时被调用.
    @Override
    public void destroy() {
        super.destroy();
        //destroy() 方法可以让您的 Servlet 关闭数据库连接、停止后台线程、
        // 把 Cookie 列表或点击计数器写入到磁盘,并执行其他类似的清理活动
    }
}
