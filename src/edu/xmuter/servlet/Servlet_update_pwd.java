package edu.xmuter.servlet;

import edu.xmuter.bean.User;
import edu.xmuter.dao_imp.UserDaoImp;
import edu.xmuter.utils.DB_connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Servlet_update_pwd")
public class Servlet_update_pwd extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String root_path = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath() + "/";//getServerPort 会带上一个”/”


        int uno = Integer.parseInt(request.getParameter("uno"));
        String pwd = request.getParameter("pwd");
        PrintWriter out = response.getWriter();


        boolean flag = new UserDaoImp().update_user_pwd(uno, pwd);

        if (flag) {
            out.println("<script> alert('update successfully')</script>");
        } else {
            out.println("<script> alert('fail to update ')</script>");
        }
        response.sendRedirect(root_path + "index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

}
