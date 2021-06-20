package service;

import dao.IUserDao;
import dao.impl.UserDaoImpl;
import daomain.Goods;
import daomain.User;
import daomain.cart;
import daomain.cartList;

import java.util.List;
import java.util.Vector;

public class UserService{
    private final IUserDao iUserDao = new UserDaoImpl();

    public boolean login(int id,String password){
        User user = new User(id,password);
        User u = iUserDao.findById(user.getId());
        return u != null && u.getPassword().equals(user.getPassword());
    }
    public boolean login(String mail,String password){
        User user = new User(mail,password);
        User u = iUserDao.findByMail(user.getMail());
        return u != null && u.getPassword().equals(user.getPassword());
    }

    public Integer register(User user){
        return iUserDao.findByMail(user.getMail())!=null ? iUserDao.insert(user) : -1;
    }

    public Integer register(String name,String mail,String password){
        return iUserDao.findByMail(mail)!=null ? iUserDao.insert(new User(0,name,password,mail)) : -1;
    }



    public User getUserInfo(Integer id){
        return iUserDao.findById(id);
    }
    public User getUserInfo(String mail){return iUserDao.findByMail(mail);}
    public boolean checkAdmin(Integer id){return iUserDao.checkPermissions(id);}
    public boolean updateUser(User user){
        return iUserDao.update(user) != 0;
    }
    public List<cart> getCartById(Integer user_id){return iUserDao.findCartById(user_id);}
    public boolean updateCart(cart c){
        return c.getNum() == 0 ? iUserDao.deletCartById(c.getId()) : iUserDao.updateCart(c);
    }
    public boolean deleteCart(Integer id){
        return iUserDao.deletCartById(id);
    }

    public boolean plusCartNum(Integer id,Integer num){
        cart cart = new cart();
        cart.setNum(num + 1);
        cart.setId(id);
        return iUserDao.updateCart(cart);
    }

    public boolean minusCartNum(Integer id,Integer num){
        cart c = new cart();
        c.setNum(num - 1);
        c.setId(id);
        return iUserDao.updateCart(c);
    }

    public List<cartList> getCartLists(List<cart> carts){
        GoodsService goodsService = new GoodsService();
        Goods goods;
        List<cartList> cartLists = new Vector<cartList>();
        for(cart c : carts){
            goods = goodsService.findGoodsById(c.getGoods_id());
            cartLists.add(new cartList(c.getId(), goods.getImg(),goods.getName(),c.getNum(),goods.getPrice()));
        }
        return cartLists;
    }

    public boolean insertCart(Integer user_id,Integer goods_id){
        cart c = new cart();
        c.setUser_id(user_id);
        c.setGoods_id(goods_id);
        c.setNum(1);
        return iUserDao.insertCart(c);
    }
}
