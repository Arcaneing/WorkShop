package servlet;

import daomain.User;
import service.GoodsService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/manage")
public class goodsManageServlet extends HttpServlet {

    private final UserService userService = new UserService();
    private final GoodsService goodsService = new GoodsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if (user == null || !userService.checkAdmin(user.getId())) {
            resp.sendError(403);
        }

        req.setAttribute("GoodsList",goodsService.getAllGoods());
        req.getRequestDispatcher("WEB-INF/admin/goods-manage.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setAttribute("GoodsList",goodsService.getAllGoods());
    }
}
