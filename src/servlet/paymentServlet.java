package servlet;

import daomain.User;
import daomain.cart;
import daomain.cartList;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/payment")
public class paymentServlet extends HttpServlet {
    UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        List<cart> carts = userService.getCartById(user.getId());
        List<cartList> cartLists = userService.getCartLists(carts);
        req.setAttribute("cartLists",cartLists);
        //凑合来吧.懒得写了............这种重复且没有技术含量的搬砖工作毫无意义
        req.getRequestDispatcher("/WEB-INF/user/payment.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
