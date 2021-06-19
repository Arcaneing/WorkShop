package service;

import dao.IGoodsDao;
import dao.IUserDao;
import dao.impl.GoodsImpl;
import dao.impl.UserDaoImpl;
import daomain.Goods;
import daomain.User;
import sun.security.provider.MD5;

public class AdminService {
    private final IUserDao iUserDao = new UserDaoImpl();
    private final IGoodsDao iGoodsDao = new GoodsImpl();
    MD5 md5 = new MD5();
    public boolean addGoods(Goods goods){
        return iGoodsDao.insert(goods);
    }
}
