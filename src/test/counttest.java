package test;

import dao.IGoodsDao;
import dao.impl.GoodsImpl;

public class counttest {
    public static void main(String[] args) {
        IGoodsDao iGoodsDao = new GoodsImpl();
        System.out.println(iGoodsDao.getLength());
        System.out.println(iGoodsDao.getMdById(1));
    }
}
