package servlet;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import daomain.Goods;
import daomain.User;
import daomain.imgs;
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
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        User user = (User) req.getSession().getAttribute("user");
        if (user == null || !adminService.checkAdmin(user.getId())) {
            resp.sendError(403);
        }

        String filepath = getServletContext().getRealPath("/") + "upload/";

        SmartUpload smartUpload = new SmartUpload();
        smartUpload.initialize(getServletConfig(), req, resp);
        smartUpload.setAllowedFilesList("jpg,png,gif");
        smartUpload.setTotalMaxFileSize(1048576);
        try {
            smartUpload.upload();
            Integer id = Integer.valueOf(smartUpload.getRequest().getParameter("id"));
            String name = smartUpload.getRequest().getParameter("name");
            String label = smartUpload.getRequest().getParameter("label");
            float price = Float.parseFloat(smartUpload.getRequest().getParameter("price"));
            String pic = goodsService.getImgFirstById(id);
            Goods goods = new Goods(id,name,price,label,pic);
            goodsService.updateMD(id,smartUpload.getRequest().getParameter("md"));
            goodsService.updateGoods(goods);

            int num = smartUpload.getFiles().getCount();
            for(int i = 0;i < num;i ++){
                com.jspsmart.upload.File file1 = smartUpload.getFiles().getFile(i);
                if(file1.getSize() < 100)
                    continue;
                String ext = file1.getFileExt();//获取文件后缀
                String filename = file1.hashCode() + "." + ext;
                file1.saveAs(filepath + filename);
                imgs img = new imgs("http://localhost:8080/upload/"+filename,id);
                System.out.println(img);
                goodsService.addImg(img);
            }

            req.setAttribute("Goods",goodsService.findGoodsById(id));
            req.setAttribute("ImgList",goodsService.getImgById(id));
            req.setAttribute("md",goodsService.getMdById(id));
            req.getRequestDispatcher("WEB-INF/admin/edit-details.jsp?id="+id).forward(req, resp);
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        User user = (User) req.getSession().getAttribute("user");
        Integer goodsid = Integer.valueOf(req.getParameter("id"));

        if (user == null || !adminService.checkAdmin(user.getId())) {
            resp.sendError(403);
        }

        if(req.getParameter("delete") != null){
            goodsService.deleteImg(req.getParameter("delete"));
        }

        req.setAttribute("Goods",goodsService.findGoodsById(goodsid));
        req.setAttribute("ImgList",goodsService.getImgById(goodsid));
        req.setAttribute("md",goodsService.getMdById(goodsid));
        req.getRequestDispatcher("WEB-INF/admin/edit-details.jsp?id="+goodsid).forward(req, resp);
    }
}
