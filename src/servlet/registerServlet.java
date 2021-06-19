package servlet;

import dao.IUserDao;
import dao.impl.UserDaoImpl;
import daomain.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/register")
public class registerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    UserService userService = new UserService();
    private final IUserDao iUserDao = new UserDaoImpl();
     public registerServlet(){
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("register.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String mail= req.getParameter("mail");
        String password = req.getParameter("password");
        if(iUserDao.insert(new User(null,req.getParameter("name"),req.getParameter("password"),req.getParameter("mail"))) != -1){
            resp.sendRedirect("login.jsp?register=true");
        }else{
            resp.sendRedirect("register.jsp?register=false");
        }
    }


}
