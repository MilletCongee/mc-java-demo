package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//Servlet 点击计数器
@WebServlet("/_015_servlet")
public class _015_servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int hitCount;
    @Override
    public void init() throws ServletException {
        // 重置点击计数器
        hitCount = 0;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // 增加 hitCount
        hitCount++;
        PrintWriter out = response.getWriter();
        String title = "总点击量";
        String docType = "<!DOCTYPE html> \n";
        //每次页面刷新时，把计数器的值增加 1
        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n" +
                "<h2 align=\"center\">" + hitCount + "</h2>\n" +
                "</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req,resp);
    }

    @Override
    public void destroy() {
       // 这一步是可选的，但是如果需要，您可以把 hitCount 的值写入到数据库
    }
}
