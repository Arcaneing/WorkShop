package dao;

import daomain.Goods;
import java.util.List;

public interface IGoodsDao {
    boolean insert(Goods goods);
    boolean delete(Integer id);
    boolean update(Goods goods);
    Goods findById(Integer id);
    List<Goods> findAll();
}
