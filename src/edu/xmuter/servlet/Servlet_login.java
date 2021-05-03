package edu.xmuter.servlet;

import edu.xmuter.bean.User;
import edu.xmuter.dao_imp.UserDaoImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet( "/Servlet_login")
public class Servlet_login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
                + "/";


        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();

        User user = Login(request);
        if (user != null) {
            session.setAttribute("user", user);
            response.sendRedirect(basePath + "view/index.jsp");
        } else {
            PrintWriter out = response.getWriter();
            out.println("<script> alert('infomation was wrong ,please try again ');" +
                    "window.history.go(-1)" +
                    "</script>");
        }
    }
    private User Login(HttpServletRequest request) {
        String u_id = request.getParameter("u_id");
        String pwd = request.getParameter("pwd");
        return new UserDaoImp().Login(u_id, pwd);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
