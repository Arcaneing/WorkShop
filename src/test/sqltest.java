package test;

import dao.IUserDao;
import dao.impl.UserDaoImpl;
import daomain.User;
import java.util.List;

public class sqltest {

    public static void main(String[] args) {
        IUserDao iUserDao = new UserDaoImpl();
        iUserDao.delete(1);
        System.out.println(iUserDao.findAll());
    }
}
