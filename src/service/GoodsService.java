package service;

import dao.IGoodsDao;
import dao.impl.GoodsImpl;
import daomain.Goods;

import java.util.List;

public class GoodsService {
    IGoodsDao iGoodsDao = new GoodsImpl();
    public List<Goods> getAllGoods(){
        return iGoodsDao.findAll();
    }
}
