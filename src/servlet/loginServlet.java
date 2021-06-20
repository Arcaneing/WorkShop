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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //设置服务器的编码集为utf-8格式，解决了post方式请求的汉子乱码问题
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        //获取输入文本框的内容，括号内为输入框的name属性
        String mail= request.getParameter("mail");
        String password = request.getParameter("password");

        try {
            if (userService.login(mail,password)){

                User user = userService.getUserInfo(mail);
                HttpSession session = request.getSession(); //获取Session对象
                session.setAttribute("user",user);   //设置属性名user，保存user对象
                if(userService.checkAdmin(user.getId())) {
                    response.sendRedirect("/manage");
                }else{
                    response.sendRedirect("catalog.jsp");}
            } else {
                response.sendRedirect("login.jsp?loginInfo=wrong");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

