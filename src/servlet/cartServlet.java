package servlet;

import daomain.User;
import daomain.cart;
import daomain.cartList;
import service.GoodsService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;


@WebServlet("/cart")
public class cartServlet extends HttpServlet {

    private final UserService userService = new UserService();
    private final GoodsService goodsService = new GoodsService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        int num = 0;
        if(req.getParameter("num") != null)
            num = Integer.parseInt(req.getParameter("num"));
        if(req.getParameter("plus") != null){
            userService.plusCartNum(Integer.valueOf(req.getParameter("plus")),num);
        }else if(req.getParameter("minus") != null){
            userService.minusCartNum(Integer.valueOf(req.getParameter("minus")),num);
        }else if(req.getParameter("delete") != null){
            userService.deleteCart(Integer.valueOf(req.getParameter("delete")));
        }

        List<cart> carts = userService.getCartById(user.getId());
        List<cartList> cartLists = userService.getCartLists(carts);
        req.setAttribute("cartLists",cartLists);
        req.getRequestDispatcher("/WEB-INF/user/shopping-cart.jsp").forward(req,resp);
    }
}
