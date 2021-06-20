package servlet;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import daomain.Goods;
import daomain.User;
import service.GoodsService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@WebServlet("/catalog")
public class catalogServlet extends HttpServlet {

    GoodsService goodsService = new GoodsService();
    UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        String search = req.getParameter("search");
        String label = req.getParameter("label");
        String page = req.getParameter("page");
        //没想好高性能的分页方法.先不写分页
        String cart = req.getParameter("cart");
        if(cart != null)
            userService.insertCart(user.getId(),Integer.valueOf(cart));

        req.setAttribute("GoodsList",goodsService.getAllGoods());
        req.getRequestDispatcher("/catalog.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
}
