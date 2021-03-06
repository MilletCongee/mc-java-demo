package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

//Servlet 处理日期
@WebServlet("/_013_servlet")
public class _013_servlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // 获取当前的日期和时间

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String title = "显示当前的日期和时间";
        Date date = new Date();

        SimpleDateFormat ft =
                new SimpleDateFormat("yyyy.MM.dd  hh:mm:ss E a ");

        String docType = "<!DOCTYPE html> \n";
        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n" +
                "<h2 align=\"center\">" + date.toString() + "</h2>\n" +
                "<h1 align=\"center\">" + "SimpleDateFormat" + "</h1>\n" +
                 "<h2 align=\"center\">" + ft.format(date) + "</h2>\n"+
                "</body></html>");


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req,resp);
    }
}
