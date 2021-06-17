package dao.impl;

import dao.C3P0Dao;
import dao.IGoodsDao;
import daomain.Goods;
import daomain.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class GoodsImpl implements IGoodsDao {
    private QueryRunner queryRunner = new QueryRunner(C3P0Dao.getDataSource());
    public boolean insert(Goods goods) {
        int insertCount = 0;
        try {
            insertCount = queryRunner.update("insert into goods(id,name,price)value (?,?,?)",goods.getId(),goods.getName(),goods.getPrice());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return insertCount == 1;
    }

    @Override
    public boolean delete(Integer id) {
        int deleteCount = 0;
        try {
            deleteCount = queryRunner.update("delete from user where id=?",id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return deleteCount == 1;
    }

    @Override
    public boolean update(Goods goods) {
        int updateCount = 0;
        try {
            updateCount = queryRunner.update("update goods set name=?,price=? where id=?",goods.getName(),goods.getPrice(),goods.getId());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return updateCount == 1;
    }

    @Override
    public Goods findById(Integer id) {
        try {
            return (Goods) queryRunner.query("select * from goods where id=?",new BeanHandler<Goods>(Goods.class),id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Goods> findAll() {
        try {
            return (List<Goods>) queryRunner.query("select * from goods",new BeanListHandler<Goods>(Goods.class));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }}
