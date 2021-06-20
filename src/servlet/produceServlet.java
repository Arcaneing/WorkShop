package servlet;

import daomain.User;
import daomain.cart;
import daomain.cartList;
import service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/produce")
public class produceServlet extends HttpServlet {

    private final GoodsService goodsService = new GoodsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        Integer itemid= Integer.valueOf(req.getParameter("id"));
        req.setAttribute("goods",goodsService.findGoodsById(itemid));
        req.setAttribute("md",goodsService.getMdById(itemid));
        req.setAttribute("imgList",goodsService.getImgById(itemid));
        req.getRequestDispatcher("/produce.jsp").forward(req,resp);
    }

}
