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

@WebServlet("/Servlet_get_user_by_uid")
public class Servlet_get_user_by_uid extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String base_path = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath() + "/view/";//getServerPort 会带上一个”/”


        String u_id = request.getParameter("u_id");

        User res = new UserDaoImp().get_user_by_uid(u_id);

        if (res != null) {
            HttpSession session = request.getSession();
            session.setAttribute("find_res", res);
            response.sendRedirect(base_path + "find2.jsp");
        } else {
            PrintWriter out = response.getWriter();
            out.println("<script>alert('wrong user id!!!');" +
                    "window.history.go(-1)" +
                    "</script>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
