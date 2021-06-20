package servlet;

import daomain.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


@WebServlet("/login")
public class loginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    UserService userService = new UserService();

    public loginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String mail= req.getParameter("mail");
        String password = req.getParameter("password");

        try {
            if (userService.login(mail,password)){

                User user = userService.getUserInfo(mail);
                HttpSession session = req.getSession();
                session.setAttribute("user",user);
                if(userService.checkAdmin(user.getId())) {
                    resp.sendRedirect("/manage");
                }else{
                    resp.sendRedirect("/catalog");}
            } else {
                resp.sendRedirect("login.jsp?loginInfo=wrong");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("login.jsp");
    }
}

