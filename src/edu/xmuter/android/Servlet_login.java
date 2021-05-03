package edu.xmuter.android;

import com.google.gson.Gson;
import edu.xmuter.bean.User;
import edu.xmuter.dao_imp.UserDaoImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Servlet_android_login")
public class Servlet_login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String base_path = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath() + "/";//getServerPort 会带上一个”/”




        String u_id = request.getParameter("userName");
        String pwd = request.getParameter("pwd");
        User user = new UserDaoImp().Login(u_id, pwd);

        response.setContentType("text/html;charset=utf-8");
        String json = null;
        if (user != null) {
            json = new Gson().toJson(user);
        }

        PrintWriter out = response.getWriter();
        out.print(json);
        out.flush();
        out.close();



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
