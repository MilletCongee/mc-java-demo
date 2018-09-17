# mc-java-demo
javaweb

 * User 用户登陆的VO操作类
 * DatabaseConnection 负责数据库的连接和关闭操作
 * UserDAO 定义登陆操作的DAO接口
 * UserDAOImpl  DAO接口的真实实现类,完成具体的登陆验证
 * DAOFactory 工厂类,取得DAO接口的实例
 * LoginServlet  接收请求参数,进行参数验证,调用DAO完成
 具体的登陆验证,并根据DAO的验证结果返回登陆信息
 * login.jsp  提供用户输入的表单,可以显示用户登陆成功或失败的信息       
 
 
 
 ####  MVC（Model View Controller)
 * 数据库连接 实现DBHelper类 
 * 创建实体类 JavaBean
 * 创建业务逻辑类 DAO层
 * 创建控制层 Servlet控制层
 * 创建页面层 jsp HTML页面                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       