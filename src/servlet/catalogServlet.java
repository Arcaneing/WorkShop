package servlet;

import service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/catalog")
public class catalogServlet extends HttpServlet {

    GoodsService goodsService = new GoodsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        String label = req.getParameter("label");
        String page = req.getParameter("page");
        //没想好高性能的分页方法.先不写分页

        req.setAttribute("GoodsList",goodsService.getAllGoods());
        req.getRequestDispatcher("/catalog.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
