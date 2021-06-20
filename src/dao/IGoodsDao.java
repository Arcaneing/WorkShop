package dao;

import daomain.Goods;
import daomain.imgs;

import java.util.List;

public interface IGoodsDao {
    boolean insert(Goods goods);
    boolean delete(Integer id);
    boolean update(Goods goods);
    Goods findById(Integer id);
    List<Goods> findAll();
    Integer getLength();
    List<imgs> getAllImg();
    List<imgs> getImgByID(Integer id);
    String getImgFirstById(Integer id);
    String getMdById(Integer id);
    boolean deleteImg(String path);
    boolean insertImg(imgs img);
    boolean updateMD(Integer Id,String md);
}
