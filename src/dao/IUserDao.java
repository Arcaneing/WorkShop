package dao;

import daomain.User;
import java.util.List;

public interface IUserDao {
    int insert(User user);
    int delete(Integer id);
    int update(User user);
    boolean checkPermissions(int id);
    User findById(Integer id);
    User findByMail(String mail);
    List<User> findAll();
}
