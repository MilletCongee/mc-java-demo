package mc.dao;

import mc.domain.User;

public interface  IUserDao {

    //根据用户名和密码来查找用户
    User find(String userName, String userPwd);

    //添加用户
    void add(User user);

    //根据用户名来查找用户
    User find(String userName);
}
