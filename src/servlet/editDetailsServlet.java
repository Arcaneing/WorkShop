package servlet;

import daomain.User;
import service.AdminService;
import service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editDetail")
public class editDetailsServlet extends HttpServlet {
    AdminService adminService = new AdminService();
    GoodsService goodsService = new GoodsService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if (user == null || !adminService.checkAdmin(user.getId())) {
            resp.sendError(403);
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        Integer goodsid = Integer.valueOf(req.getParameter("id"));

        if (user == null || !adminService.checkAdmin(user.getId())) {
            resp.sendError(403);
        }

        if(req.getParameter("delete") != null){
            goodsService.deleteImg(Integer.valueOf(req.getParameter("delete")));
        }

        req.setAttribute("Goods",goodsService.findGoodsById(goodsid));
        req.setAttribute("ImgList",goodsService.getImgById(goodsid));
        req.setAttribute("md",goodsService.getMdById(goodsid));
        req.getRequestDispatcher("WEB-INF/admin/edit-details.jsp").forward(req, resp);
    }
}
