package test;

import dao.UserDao;
import daomain.User;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.Connection;
import java.sql.SQLException;

import dao.sqlDao;

public class sqltest {
    public static int insert(User u){
        Connection conn = null;
        int insertCount = 0;
        try{
            QueryRunner queryRunner = new QueryRunner();
            conn = sqlDao.getConnection();
            String sql = "insert into table_test(name,password)values(?,?)";
            insertCount = queryRunner.update(conn,sql,u.getUsername(),u.getPw());
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return insertCount;
    }

    public static void main(String[] args) {
        User user = new User(1,"Name_4","PW_4");
        int i = insert(user);
        System.out.print(i);
    }
}
