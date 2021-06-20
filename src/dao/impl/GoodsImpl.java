package dao.impl;

import dao.C3P0Dao;
import dao.IGoodsDao;
import daomain.Goods;
import daomain.User;
import daomain.imgs;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class GoodsImpl implements IGoodsDao {
    private QueryRunner queryRunner = new QueryRunner(C3P0Dao.getDataSource());

    public boolean insert(Goods goods) {
        int insertCount = 0;
        try {
            insertCount = queryRunner.update("insert into goods(name,price,label,img)value (?,?,?,?)",goods.getName(),goods.getPrice(),goods.getLabel(),goods.getImg());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return insertCount == 1;
    }

    @Override
    public boolean delete(Integer id) {
        int deleteCount = 0;
        try {
            deleteCount = queryRunner.update("delete from goods where id=?",id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return deleteCount == 1;
    }

    @Override
    public boolean update(Goods goods) {
        int updateCount = 0;
        try {
            updateCount = queryRunner.update("update goods set name=?,price=?,label=?,img=? where id=?",goods.getName(),goods.getPrice(),goods.getLabel(), goods.getImg(),goods.getId());
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
    }

    @Override
    public Integer getLength() {
        try {
            return Integer.valueOf(String.valueOf(queryRunner.query("select count(*) from goods", new ArrayHandler())[0]));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<imgs> getAllImg() {
        try {
            return queryRunner.query("select * from imgs",new BeanListHandler<imgs>(imgs.class));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public List<imgs> getImgByID(Integer id) {
        try {
            return queryRunner.query("select * from imgs where id=?",new BeanListHandler<imgs>(imgs.class),id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public String getMdById(Integer id) {
        try {
            Object[] l = queryRunner.query("select * from md where id=?", new ArrayHandler(),id);
            if(l.length >= 2){
                return String.valueOf(l[1]);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean deleteImg(Integer id) {
        int deleteCount = 0;
        try {
            deleteCount = queryRunner.update("delete from imgs where id=?",id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return deleteCount == 1;
    }
}
