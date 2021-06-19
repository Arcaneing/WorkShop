package servlet;

import com.jspsmart.upload.SmartUploadException;
import daomain.Goods;
import daomain.User;
import service.AdminService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

import com.jspsmart.upload.SmartUpload;

@WebServlet("/build")
public class goodsBuildServlet extends HttpServlet {
    private final UserService userService = new UserService();
    private final AdminService adminService = new AdminService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if (user == null || !userService.checkAdmin(user.getId())) {
            resp.sendError(403);
        }
        String filepath = getServletContext().getRealPath("/") + "upload/";
        File file = new File(filepath);
        if (!file.exists()) {
            file.mkdir();
        }


        SmartUpload smartUpload = new SmartUpload();
        smartUpload.initialize(getServletConfig(), req, resp);
        smartUpload.setAllowedFilesList("jpg,png,gif");
        smartUpload.setTotalMaxFileSize(1048576);
        try {
            smartUpload.upload();
            com.jspsmart.upload.File file1 = smartUpload.getFiles().getFile(0);
            String name = smartUpload.getRequest().getParameter("name");
            String label = smartUpload.getRequest().getParameter("label");
            float price = Float.parseFloat(smartUpload.getRequest().getParameter("price"));
            String ext = file1.getFileExt();//获取文件后缀
            String filename = file1.hashCode() + "." + ext;
            file1.saveAs(filepath + filename);
            Goods goods = new Goods(0, name, price, label, filename);
            String build = adminService.addGoods(goods) ? "true" : "false";
            req.getRequestDispatcher("WEB-INF/admin/goods-build.jsp?build=" + build).forward(req, resp);
        } catch (SmartUploadException e) {
            e.printStackTrace();
            req.getRequestDispatcher("WEB-INF/admin/goods-build.jsp?build=false").forward(req, resp);
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if (user != null && userService.checkAdmin(user.getId())) {
            req.getRequestDispatcher("WEB-INF/admin/goods-build.jsp").forward(req, resp);
        } else {
            resp.sendError(403);
        }
    }
}
