package mc.service;

import mc.dao.IUserDao;
import mc.dao.impl.IUserDaoImpl;
import mc.domain.User;

public class IUserServiceImpl implements IUserService{
    private IUserDao userDao = new IUserDaoImpl();

    @Override
    public void registerUser(User user) {
        if (userDao.find(user.getUserName())!=null) {

        }
        userDao.add(user);
    }

    @Override
    public User loginUser(String userName, String userPwd) {
        return userDao.find(userName, userPwd);
    }
}
