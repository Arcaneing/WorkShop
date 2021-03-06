package dao.impl;

import dao.IUserDao;
import dao.C3P0Dao;
import daomain.User;
import daomain.cart;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UserDaoImpl implements IUserDao {
    private QueryRunner queryRunner = new QueryRunner(C3P0Dao.getDataSource());
    @Override
    public int insert(User user) {
        if(findByMail(user.getMail()) != null)
            return -1;
        try {
            queryRunner.update("insert into user(name,password,mail)value (?,?,?)",user.getName(),user.getPassword(),user.getMail());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return findByMail(user.getMail()).getId();
    }

    @Override
    public int delete(Integer id) {
        int deleteCount = 0;
        try {
            deleteCount = queryRunner.update("delete from user where id=?",id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return deleteCount;
    }

    @Override
    public int update(User user) {
        try {
            int updateCount = queryRunner.update("update user set name=?,password=?,mail=? where id=?",user.getName(),user.getPassword(),user.getMail(),user.getId());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }

    @Override
    public boolean checkPermissions(int id) {
        try {
            return queryRunner.query("select * from admin where id=?",new ArrayHandler(),id).length != 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public User findById(Integer id) {
        try {
            return (User) queryRunner.query("select * from user where id=?",new BeanHandler<User>(User.class),id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public User findByMail(String mail) {
        try {
            return (User) queryRunner.query("select * from user where mail=?",new BeanHandler<User>(User.class),mail);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public List<User> findAll() {
        try {
            return (List<User>) queryRunner.query("select * from user",new BeanListHandler<User>(User.class));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public List<cart> findCartById(Integer user_id) {
        try {
            return (List<cart>) queryRunner.query("select * from cart where user_id=?",new BeanListHandler<cart>(cart.class),user_id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean deletCartById(Integer id) {
        int deleteCount = 0;
        try {
            deleteCount = queryRunner.update("delete from cart where id=?",id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return deleteCount == 1;
    }

    @Override
    public boolean insertCart(cart c) {
        try {
            return queryRunner.update("insert into cart(user_id,goods_id,num)value (?,?,?)",c.getUser_id(),c.getGoods_id(),c.getNum()) == 1;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateCart(cart c) {
        try {
            return queryRunner.update("update cart set num=? where id=?",c.getNum(),c.getId()) == 1;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

}
