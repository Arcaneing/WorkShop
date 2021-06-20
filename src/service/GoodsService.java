package service;

import dao.IGoodsDao;
import dao.impl.GoodsImpl;
import daomain.Goods;
import daomain.imgs;

import java.util.List;

public class GoodsService {
    IGoodsDao iGoodsDao = new GoodsImpl();

    public List<Goods> getAllGoods() {
        return iGoodsDao.findAll();
    }

    public boolean addGoods(Goods goods) {
       return iGoodsDao.insert(goods);
    }

    public boolean deleteGoods(Integer id) {
        return iGoodsDao.delete(id);
    }

    public List<imgs> getAllImg() {
        return iGoodsDao.getAllImg();
    }

    public List<imgs> getImgById(Integer id) {
        return iGoodsDao.getImgByID(id);
    }

    public Goods findGoodsById(Integer id) {
        return iGoodsDao.findById(id);
    }

    public String getMdById(Integer id) {
        return iGoodsDao.getMdById(id);
    }

    public Boolean deleteImg(String path) {
        return iGoodsDao.deleteImg(path);
    }

    public String getImgFirstById(Integer id) {
        return iGoodsDao.getImgFirstById(id);
    }

    public Boolean updateGoods(Goods goods) {
        return iGoodsDao.update(goods);
    }

    public Boolean addImg(imgs img) {
        return iGoodsDao.insertImg(img);
    }

    public Boolean updateMD(Integer id,String md){
        return iGoodsDao.updateMD(id,md);
    }
}
