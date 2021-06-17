package service;

import dao.IUserDao;
import dao.impl.UserDaoImpl;
import daomain.User;

public class UserService{
    private final IUserDao iUserDao = new UserDaoImpl();

    public boolean login(int id,String password){
        User user = new User(id,password);
        User u = iUserDao.findById(user.getId());
        return u != null && u.getPassword().equals(user.getPassword());
    }
    public boolean login(String mail,String password){
        User user = new User(mail,password);
        User u = iUserDao.findByMail(user.getMail());
        return u != null && u.getPassword().equals(user.getPassword());
    }


    public User getUserInfo(Integer id){
        return iUserDao.findById(id);
    }
    public User getUserInfo(String mail){return iUserDao.findByMail(mail);}

    public boolean updateUser(User user){
        return iUserDao.update(user) != 0;
    }


}