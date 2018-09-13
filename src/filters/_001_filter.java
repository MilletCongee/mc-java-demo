package filters;

import javax.servlet.Filter;
//导入必需的 java 库
import javax.servlet.*;
import java.io.IOException;
import java.util.*;

//Servlet 过滤器是可用于 Servlet 编程的 Java 类,可以实现以下目的:
//在客户端的请求访问后端资源之前,拦截这些请求
//在服务器的响应发送回客户端之前,处理这些响应

/*
* 身份验证过滤器（Authentication Filters）
* 数据压缩过滤器（Data compression Filters）
* 加密过滤器（Encryption Filters）
* 触发资源访问事件过滤器
* 图像转换过滤器（Image Conversion Filters）
* 日志记录和审核过滤器（Logging and Auditing Filters）
* MIME-TYPE 链过滤器（MIME-TYPE Chain Filters
* 标记化过滤器（Tokenizing Filters）
* XSL/T 过滤器（XSL/T Filters），转换 XML 内容
* */

public class _001_filter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        //web 应用程序启动时,web 服务器将创建Filter 的实例对象,并调用其init方法,读取web.xml配置,完成对象的初始化功能
        //从而为后续的用户请求作好拦截的准备工作（filter对象只会创建一次,init方法也只会执行一次）

        // 获取初始化参数
        String site = filterConfig.getInitParameter("_001_filter");

        // 输出初始化参数
        System.out.println("网站名称: " + site); //输出一次

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
    //该方法完成实际的过滤操作,当客户端请求方法与过滤器设置匹配的URL时,
    // Servlet容器将先调用过滤器的doFilter方法。FilterChain用户访问后续过滤器。

        // 输出站点名称
        System.out.println("站点网址：http://www.runoob.com"); //请求一次执行一次
        // 把请求传回过滤链
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {
    //Servlet容器在销毁过滤器实例前调用该方法,在该方法中释放Servlet过滤器占用的资源

        /* 在 Filter 实例被 Web 容器从服务移除之前调用 */
    }
}
